source(here::here("scripts/load.R"))

# load cluster data

# topic information
here::here("data/topic modelling tables") %>% 
  list.files("topic_info\\.csv", recursive = TRUE, full.names = TRUE) %>% 
  enframe(name = NULL, value = "path") %>% 
  mutate(`Bill Type` = str_replace(
    path, "^.*\\/([A-Za-z ]+)\\/topic\\_info\\.csv", "\\1"
  )) %>% 
  mutate(`Bill Type` = str_replace(`Bill Type`, "and", "/")) %>% 
  mutate(data = map(path, read_csv)) %>% 
  select(-path) %>% 
  unnest(data) %>% 
  mutate(across(c(Topic, Count), as.integer)) %>% 
  mutate(Representative_Docs = str_replace_all(
    Representative_Docs,
    "\"", "'"
  )) %>% 
  # pull(Representative_Docs) %>% {.[[5L]]}
  mutate(across(
    c(Representation, KeyBERT, OpenAI, MMR, POS, Representative_Docs),
    \(s) str_split(str_remove_all(s, "^\\[(\\'|\")|(\\'|\")\\]$"), "', '")
  )) %>% 
  # pull(Representative_Docs) %>% {.[[5L]]}
  mutate(`Bill Type` = fct_infreq(`Bill Type`, w = Count)) %>% 
  print() -> topic_info

# topic documents
here::here("data/topic modelling tables") %>% 
  list.files("topic\\.csv", recursive = TRUE, full.names = TRUE) %>% 
  enframe(name = NULL, value = "path") %>% 
  mutate(`Bill Type` = str_replace(
    path, "^.*\\/([A-Za-z ]+)\\/topic\\.csv", "\\1"
  )) %>% 
  mutate(`Bill Type` = str_replace(`Bill Type`, "and", "/")) %>% 
  mutate(`Bill Type` = factor(`Bill Type`, levels(topic_info$`Bill Type`))) %>% 
  mutate(data = map(path, read_csv)) %>% 
  select(-path) %>% 
  unnest(data) %>% 
  mutate(Topic = as.integer(Topic)) %>% 
  print() -> topic_docs

# # join in year
# topic_docs %>%
#   rename(Description = Documents) %>%
#   left_join(
#     rename(bills_18_23, Description = `Bill Description`),
#     by = join_by(`Bill Type`, Description)
#   ) %>%
#   # NOTE: No matches failed.
#   # filter(is.na(Year))
#   mutate(`Bill Type` = str_replace(`Bill Type`, "and", "/")) %>%
#   mutate(`Bill Type` = factor(
#     `Bill Type`,
#     levels(topic_info$`Bill Type`)
#   )) %>%
#   group_by(Description) %>%
#   slice_max(order_by = Date, n = 1L, with_ties = FALSE) %>%
#   ungroup() %>%
#   print() -> topic_bills

# read in complete cluster tables
here::here("data/topic modelling tables") %>% 
  list.files("bills_18_23_[A-Za-z ]+\\.csv", full.names = TRUE) %>% 
  enframe(name = NULL, value = "path") %>% 
  mutate(data = map(path, read_csv)) %>% 
  select(-path) %>% 
  unnest(data) %>% 
  select(-1L) %>% 
  mutate(`Bill Type` = factor(`Bill Type`, levels(topic_info$`Bill Type`))) %>% 
  rename(Year = year) %>% 
  mutate(Year = as.integer(Year)) %>% 
  mutate(Topic = as.integer(Topic)) %>% 
  mutate(`Bill Description` = str_replace_all(
    `Bill Description`,
    "\"", "'"
  )) %>% 
  print() -> topic_bills

# tabulate outlier rates

topic_info %>% 
  mutate(Bin = ifelse(Topic == -1L, "Outlier", "Clustered")) %>% 
  mutate(Bin = factor(Bin, levels = c("Clustered", "Outlier"))) %>% 
  group_by(`Bill Type`) %>% 
  count(Bin, wt = Count, name = "Count") %>% 
  mutate(Total = sum(Count), Prop = Count / Total) %>% 
  mutate(Entry = str_c(Count, " (", format(Prop * 100, digits = 2L), "%)")) %>% 
  ungroup() %>% 
  pivot_wider(id_cols = `Bill Type`, names_from = Bin, values_from = Entry) %>% 
  arrange(`Bill Type`) %>% 
  print() %>% 
  knitr::kable(format = "html") %>% 
  write_file(here::here("tables/cluster-outlier.html"))

# analyze clusters

# length(intersect(
#   topic_bills$`Bill Description`,
#   cluster_youth_athletics$Representative_Docs
# ))

# https://github.com/tidyverse/tidyr/issues/250
unfill_vec <- function(x) {
  same <- x == dplyr::lag(x)
  ifelse(!is.na(same) & same, "", as.character(x))
}

# tabulate representative document texts
topic_info %>% 
  select(`Bill Type`, Topic, Count, Name, CustomName, Representative_Docs) %>% 
  left_join(topic_bills, by = join_by(`Bill Type`, Topic, CustomName)) %>% 
  unnest(Representative_Docs) %>% 
  mutate(`Bill Link` = str_replace(`Bill Link`, "/bill/", "/text/")) %>% 
  filter(`Bill Description` == Representative_Docs) %>% 
  print() -> topic_texts
# youth athletics
topic_texts %>% 
  filter(`Bill Type` == "Youth Athletics") %>% 
  filter(Topic != -1L) %>% 
  # ad hoc code to follow dendrograms
  mutate(Cluster = ifelse(str_detect(CustomName, "Policy"), 1L, 2L)) %>% 
  group_by(Topic, Cluster, Count, CustomName, Date, `Bill Link`) %>% 
  summarize(Representative_Docs = list(unlist(Representative_Docs))) %>% 
  ungroup() %>% 
  unnest(Representative_Docs) %>% 
  group_by(Topic, Cluster, Count, CustomName, Date, Representative_Docs) %>% 
  summarize(across(c(`Bill Link`), list)) %>% 
  ungroup() %>% 
  arrange(Cluster, Topic) %>% 
  print() -> cluster_youth_athletics
cluster_youth_athletics %>%
  rename(`Representative Text` = Representative_Docs) %>%
  select(Cluster, Date, `Bill Link`, `Representative Text`) %>%
  arrange(Cluster, Date) %>%
  mutate(Cluster = unfill_vec(Cluster)) %>%
  knitr::kable(format = "html") %>%
  write_file(here::here("tables/cluster-youth-athletics.html"))
# manually review bill texts for substantive differences between clusters
cluster_youth_athletics %>%
  rename(`Representative Text` = Representative_Docs) %>%
  select(Cluster, Date, `Bill Link`, `Representative Text`) %>%
  arrange(Cluster, Date) %>% 
  print() %>% 
  # pull(`Bill Link`) %>% unlist() %>% lapply(browseURL)
  mutate(`Bill Link` = map_chr(`Bill Link`, \(x) str_c(x, collapse = ", "))) %>% 
  select(-`Representative Text`) %>% 
  write_csv(here::here("tables/cluster-youth-athletics.csv"))
# healthcare
topic_texts %>% 
  filter(`Bill Type` == "Healthcare") %>% 
  filter(Topic != -1L) %>% 
  # ad hoc code to follow dendrograms
  mutate(Cluster = ifelse(
    str_detect(CustomName, "Legislat|Regulat|Prohibit"),
    1L, 2L
  )) %>% 
  # count(Cluster)
  group_by(Topic, Cluster, Count, CustomName, Date, `Bill Link`) %>% 
  summarize(Representative_Docs = list(unlist(Representative_Docs))) %>% 
  ungroup() %>% 
  unnest(Representative_Docs) %>% 
  group_by(Topic, Cluster, Count, CustomName, Date, Representative_Docs) %>% 
  summarize(across(c(`Bill Link`), list)) %>% 
  ungroup() %>% 
  arrange(Cluster, Topic) %>% 
  print() -> cluster_healthcare
cluster_healthcare %>%
  rename(`Representative Text` = Representative_Docs) %>%
  select(Cluster, Date, `Bill Link`, `Representative Text`) %>%
  arrange(Cluster, Date) %>%
  mutate(Cluster = unfill_vec(Cluster)) %>%
  knitr::kable(format = "html") %>%
  write_file(here::here("tables/cluster-healthcare.html"))
cluster_healthcare %>%
  rename(`Representative Text` = Representative_Docs) %>%
  select(Cluster, Date, `Bill Link`, `Representative Text`) %>%
  arrange(Cluster, Date) %>% 
  print() %>% 
  # pull(`Bill Link`) %>% unlist() %>% lapply(browseURL)
  mutate(`Bill Link` = map_chr(`Bill Link`, \(x) str_c(x, collapse = ", "))) %>% 
  select(-`Representative Text`) %>% 
  write_csv(here::here("tables/cluster-healthcare.csv"))

# # visualize clusters over time
# bind_rows(
#   mutate(cluster_healthcare, `Bill Type` = "Healthcare"),
#   mutate(cluster_youth_athletics, `Bill Type` = "Youth Athletics")
# ) %>% 
#   rename(Description = Representative_Docs) %>% 
#   left_join(topic_bills, by = join_by(`Bill Type`, Description)) %>% 
#   glimpse()
#   mutate(`Bill Type` = fct_infreq(`Bill Type`, w = Count)) %>% 
#   mutate(across(c(Year, Cluster), factor)) %>% 
#   ggplot(aes(x = Year, y = Count, fill = Cluster)) +
#   facet_wrap(facets = vars(`Bill Type`), scales = "free") +
#   geom_col()

# number of bills each year
topic_bills %>% 
  ggplot(aes(x = Year)) +
  facet_wrap(facets = vars(`Bill Type`)) +
  geom_bar() +
  labs(y = NULL)

# visualize clusters over time
bind_rows(
  mutate(cluster_healthcare, `Bill Type` = "Healthcare"),
  mutate(cluster_youth_athletics, `Bill Type` = "Youth Athletics")
) %>% 
  distinct(`Bill Type`, Topic, Cluster) %>% 
  print() -> cluster_topic
topic_bills %>% 
  left_join(cluster_topic, by = join_by(`Bill Type`, Topic)) %>% 
  mutate(`Bill Type` = factor(`Bill Type`, levels(topic_info$`Bill Type`))) %>% 
  # select(Year, Topic, Cluster, `Bill Type`) %>% filter(! is.na(Cluster))
  mutate(Cluster = factor(as.character(Cluster))) %>% 
  group_by(`Bill Type`) %>% 
  filter(any(! is.na(Cluster))) %>% 
  ungroup() %>% 
  ggplot(aes(x = Year, fill = Cluster)) +
  facet_wrap(facets = vars(`Bill Type`)) +
  geom_bar() +
  scale_fill_manual(values = clust_pal) +
  labs(y = NULL) -> year_cluster_bar
print(year_cluster_bar)
ggsave(
  here::here("figures/year-cluster.jpg"), year_cluster_bar,
  width = textwidth, height = textwidth / 2
)
