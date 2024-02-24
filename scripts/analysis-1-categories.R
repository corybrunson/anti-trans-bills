library(tidyverse)
library(readxl)
library(RColorBrewer)
library(ggmosaic)

# import and pre-process data

state_abb_name <- c(setNames(state.abb, state.name), `United States` = "USA")
status_levels <- c(
  "Dead/Failed", "Vetoed", "Introduced",
  "Crossed Over", "Passed", "Signed/Enacted"
)
read_excel(
  "data/bills_2018-2020.xlsx", 
  col_types = c("date", "text", "text", "text", "text", "text", "numeric")
) %>% 
  # standardize variables
  mutate(Date = as_date(Date)) %>% 
  mutate(`Bill Link` = as.character(`Bill Link`)) %>% 
  print() -> bills_18_20
bind_rows(
  read_csv("data/2021 Anti-Trans Bills _ Track Trans Legislation.csv"),
  read_csv("data/2022 Anti-Trans Bills _ Track Trans Legislation.csv"),
  read_csv("data/2023 Anti-Trans Bills _ Track Trans Legislation.csv")
) %>% 
  # standardize variables
  mutate(State = state_abb_name[State]) %>% 
  print() -> bills_21_23
bind_rows(bills_18_20, bills_21_23) %>% 
  # standardize prefixes
  mutate(Bill = str_replace(Bill, "^([A-Z]+)\\.* *([0-9]+)", "\\1 \\2")) %>% 
  # censor typo dates
  mutate(Date = if_else(Date < as_date("2018-01-01"), NA_Date_, Date)) %>% 
  # introduce year variable
  mutate(Year = as.integer(year(Date))) %>% 
  # manually update some statuses
  mutate(Status = if_else(Status == "Introduced*", "Dead/Failed", Status)) %>% 
  mutate(Status = if_else(Status == "Posted", "Dead/Failed", Status)) %>% 
  # order bill status by likely impact
  mutate(Status = factor(str_trim(Status), levels = status_levels)) %>% 
  # sort chronologically
  arrange(Date) %>% 
  print() -> bills_18_23
# new palettes
status_pal <- brewer.pal(length(status_levels), name = "Dark2")
type_pal <- brewer.pal(n_distinct(bills_18_23$`Bill Type`), name = "Set3")

# coarser categorizations of bill type and of status
bills_18_23 %>% 
  mutate(Group = case_when(
    `Bill Type` == "ID Updates" | 
      `Bill Type` == "Nondiscrimination Protections" | 
      `Bill Type` == "Public Facilities" | 
      `Bill Type` == "Religious Freedom" | 
      `Bill Type` == "Schools / Education" | 
      `Bill Type` == "Youth Athletics" ~ "Social",
    `Bill Type` == "Drag Performance" ~ "Drag",
    `Bill Type` == "Healthcare" ~ "Medical"
  )) %>% 
  mutate(Fate = case_when(
    Status == "Passed" | 
      Status == "Signed/Enacted" | 
      Status == "Crossed Over" ~ "Passed",
    TRUE ~ "Failed"
  )) %>% 
  print() -> bills_18_23
group_pal <- brewer.pal(n_distinct(bills_18_23$Group), name = "Accent")

# bill types over time

# chronological bar plot, coarse categorization
bills_18_23 %>% 
  filter(! is.na(Year)) %>% 
  mutate(Year = factor(Year)) %>% 
  ggplot(aes(x = Year, fill = Group)) +
  scale_fill_manual(values = group_pal) +
  labs(y = NULL) +
  geom_bar()

# chronological bar plot, social types only
bills_18_23 %>% 
  filter(! is.na(Year)) %>% 
  mutate(Year = factor(Year)) %>% 
  filter(Group == "Social") %>% 
  ggplot(aes(x = Year, fill = `Bill Type`)) +
  scale_fill_manual(values = type_pal) +
  labs(y = NULL) +
  geom_bar()

# relationship between bill type and status

# mosaic plot, coarse categorization
bills_18_23 %>% 
  # order bill type by amount
  mutate(Group = fct_infreq(Group)) %>%
  count(Group, Status, name = "Count") %>%
  ggplot() +
  theme_bw() +
  geom_mosaic(aes(
    weight = Count,
    x = product(Status, Group), fill = Status
  )) +
  scale_fill_manual(values = status_pal) +
  guides(fill = "none")

# Fisher test, coarse categorization
bills_18_23 %>% 
  select(Group, Fate) %>% 
  table() %>% 
  print() -> group_fate
fisher.test(group_fate)

# mosaic plot, social types only
bills_18_23 %>% 
  filter(Group == "Social") %>% 
  # NB: `ggmosaic::product()` cannot handle non-syntactic names
  mutate(Type = `Bill Type`) %>% 
  # order bill type by amount
  mutate(Type = fct_infreq(Type)) %>%
  count(Type, Status, name = "Count") %>%
  ggplot() +
  theme_bw() +
  geom_mosaic(aes(
    weight = Count,
    x = product(Status, Type), fill = Status
  )) +
  scale_fill_manual(values = status_pal) +
  guides(fill = "none") +
  theme(axis.text.x = element_text(angle = 30, hjust = 1))

# Fisher test, social types only
bills_18_23 %>% 
  filter(Group == "Social") %>% 
  select(`Bill Type`, Fate) %>% 
  table() %>% 
  print() -> type_fate
fisher.test(type_fate)

# compare fates between 2018-21 and 2022-23

# Fisher test
bills_18_23 %>% 
  mutate(Era = case_when(
    Year <= 2021L ~ "2018-21",
    Year >= 2022L ~ "2022-23"
  )) %>% 
  select(Era, Fate) %>% 
  table() %>% 
  print() -> era_fate
fisher.test(era_fate)
