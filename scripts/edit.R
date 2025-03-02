#' This script assumes that `load.R` has been sourced. It will then
#' 1. remove duplicates per the analysis in `analysis-0-deduplicate.R`,
#' 1. read in our corrections file `type-challenges.xlsx`, and
#' 2. revise all pre-processed data objects accordingly.
#' Downstream analysis files can then source, or not, this file after `load.R`
#' according as the corrections are to be made.

# read in corrections file
read_xlsx(
  "data/validate/type-challenges.xlsx",
  col_types = c("date", rep("text", 5L))
) %>%
  mutate(Date = as_date(Date)) %>%
  select(-`Bill Description`) %>%
  mutate(Bill = str_squish(Bill)) %>%
  distinct() %>%
  print() -> bills_recat
# ensure that non-exclusion categories agree
bills_recat %>%
  select(`Bill Type Revised`) %>%
  anti_join(bills_18_23, by = c("Bill Type Revised" = "Bill Type")) %>%
  filter(! str_detect(`Bill Type Revised`, "^\\[.*\\]$"))
# check for any failed matches (edit file until empty)
bills_recat %>%
  anti_join(bills_18_23, by = join_by(Date, State, Bill, `Bill Type`)) %>%
  left_join(bills_18_23, by = join_by(Date, State, `Bill Type`)) %>%
  select(Date, starts_with("Bill.")) %>%
  print()

# remove duplicates
bills_18_23 %>%
  group_by(Date, State, Bill) %>%
  slice_head(n = 1L) %>%
  ungroup() ->
  bills_18_23

# apply corrections
bills_18_23 %>%
  left_join(bills_recat, by = join_by(Date, State, Bill, `Bill Type`)) %>%
  filter(is.na(`Bill Type Revised`) |
           ! str_detect(`Bill Type Revised`, "^\\[.*\\]$")) %>%
  mutate(`Bill Type` = ifelse(
    is.na(`Bill Type Revised`),
    `Bill Type`, `Bill Type Revised`
  )) %>%
  select(-`Bill Type Revised`) ->
  bills_18_23

# write de-duplicated and corrected data to file
write_csv(bills_18_23, file = here::here("data/bills_18_23_edit.csv"))
