library(tidyverse)
library(readxl)
library(RColorBrewer)

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
clust_pal <- c(
  `1` = rgb(61, 153, 112, maxColorValue = 255),
  `2` = rgb(255, 65, 54, maxColorValue = 255)
)
# page dimensions
textwidth = 8
phi <- (1 + sqrt(5)) / 2
