source(here::here("scripts/load.R"))

# restrict to elements needed for review
bills_18_23 %>% 
  select(-Status, -`Bill Link`, -Year) %>% 
  arrange(Date, State, Bill) %>% 
  relocate(`Bill Type`, .before = `Bill Description`) %>% 
  print() -> bills_review

# partition into three subsets for review
bills_review %>% 
  rsample::vfold_cv(v = 3L, strata = `Bill Type`) %>% 
  print() -> bills_split

# write partitions to files
for (i in seq(nrow(bills_split))) {
  bills_split$splits[[i]] %>% 
    rsample::assessment() %>% 
    write_csv(file = str_c(here::here("data/subset"), "-", i, ".csv"))
}
