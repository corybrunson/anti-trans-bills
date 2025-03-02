source(here::here("scripts/load.R"))

# check for duplicates
nrow(bills_18_23)
bills_18_23 %>%
  group_by_at(vars(everything())) %>%
  count(name = "Count") %>% ungroup() %>% arrange(desc(Count)) %>%
  relocate(Count) %>%
  nrow()
bills_18_23 %>%
  group_by(Date, State, Bill, `Bill Type`) %>%
  count(name = "Count") %>% ungroup() %>% arrange(desc(Count)) %>%
  relocate(Count) %>%
  nrow()
bills_18_23 %>%
  group_by(Date, State, Bill) %>%
  count(name = "Count") %>% ungroup() %>% arrange(desc(Count)) %>%
  relocate(Count) %>%
  nrow()
bills_18_23 %>%
  group_by(Date, State, Bill) %>%
  summarize(
    Count = n(),
    across(c(`Bill Description`, Status, `Bill Type`), list)
  ) %>%
  ungroup() %>%
  filter(Count > 1L) %>%
  mutate(across(
    c(`Bill Description`, Status, `Bill Type`),
    \(l) map_chr(l, \(x) paste(unique(x), collapse = " | "))
  )) %>%
  print()
bills_18_23 %>%
  arrange(Date, State, Bill) %>%
  group_by(Date, State, Bill) %>%
  add_count(name = "Count") %>%
  ungroup() %>%
  filter(Count > 1L) %>%
  mutate(Duplicate = row_number() != 1L &
           ( Date == lag(Date) & State == lag(State) & Bill == lag(Bill) )) %>%
  relocate(Count, Duplicate) %>%
  mutate(across(
    c(Date, State, Bill),
    \(x) if_else(Duplicate, NA, x)
  )) %>%
  select(-Duplicate, -`Bill Link`, -Year) %>%
  write_csv(here::here("data/bills_18_23_dupe.csv"), na = "")
