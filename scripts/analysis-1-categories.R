source(here::here("scripts/load.R"))
library(patchwork)
library(ggmosaic)

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
  # order bill categorizations by amount
  mutate(`Bill Type` = fct_infreq(`Bill Type`)) %>%
  mutate(Group = fct_infreq(Group)) %>%
  mutate(Fate = factor(Fate, c("Failed", "Passed"))) %>%
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
  geom_bar() ->
  group_bar
# chronological bar plot, social types only
bills_18_23 %>% 
  filter(! is.na(Year)) %>% 
  mutate(Year = factor(Year)) %>% 
  filter(Group == "Social") %>% 
  ggplot(aes(x = Year, fill = `Bill Type`)) +
  scale_fill_manual(values = type_pal) +
  labs(y = NULL) +
  geom_bar() ->
  type_bar
# juxtapose bar plots
group_type_bars <- 
  group_bar + theme(legend.position = "bottom") +
  type_bar + theme(legend.position = "bottom") +
  guides(fill = guide_legend(nrow = 3L, byrow = TRUE)) +
  plot_annotation(tag_levels = "A")
ggsave(
  here::here("figures/group-type.jpg"), group_type_bars,
  width = textwidth, height = textwidth / phi
)

# relationship between bill type and status

# mosaic plot, coarse categorization
bills_18_23 %>% 
  # order bill type by amount
  count(Group, Status, name = "Count") %>%
  ggplot() +
  geom_mosaic(aes(
    weight = Count,
    x = product(Status, Group), fill = Status
  )) +
  scale_fill_manual(values = status_pal) +
  guides(fill = "none") ->
  group_status_mosaic
ggsave(
  here::here("figures/group-status.jpg"), group_status_mosaic,
  width = textwidth, height = textwidth / phi
)

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
  count(Type, Status, name = "Count") %>%
  ggplot() +
  geom_mosaic(aes(
    weight = Count,
    x = product(Status, Type), fill = Status
  )) +
  scale_fill_manual(values = status_pal) +
  guides(fill = "none") +
  theme(axis.text.x = element_text(angle = 30, hjust = 1)) -> 
  type_status_mosaic
ggsave(
  here::here("figures/type-status.jpg"), type_status_mosaic,
  width = textwidth, height = textwidth / phi
)

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

# plot success rate by year
bills_18_23 %>% 
  filter(! is.na(Year)) %>% 
  group_by(Year, Fate) %>% 
  count(name = "Subtotal") %>% 
  group_by(Year) %>% 
  mutate(Prop = Subtotal / sum(Subtotal)) %>% 
  ungroup() %>% 
  ggplot(aes(x = Year, y = Subtotal)) +
  # geom_point(aes(color = Fate)) + geom_line(aes(color = Fate))
  geom_col(
    aes(fill = Fate),
    position = position_dodge2(width = .9)
  ) +
  geom_text(
    aes(y = Subtotal, label = scales::percent(Prop, accuracy = 1)),
    position = position_dodge2(width = .9), vjust = -.5, size = 3
  ) +
  labs(x = NULL, y = NULL, fill = NULL) ->
  year_fate_bar
ggsave(
  here::here("figures/year-fate.jpg"), year_fate_bar,
  width = textwidth, height = textwidth / 2
)
