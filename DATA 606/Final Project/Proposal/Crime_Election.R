library(tidyverse)

load("1976-2020-president.RData")

crime <- read_csv("./Proposal/violent_crimes_usafacts.csv") %>%
  slice(14:64) %>%
  rename(state = "Years") %>%
  mutate(across(c(-state), as.integer), state = str_to_upper(state)) %>%
  pivot_longer(
    -state,
    names_to = "year",
    values_to = "tot_violent_crime"
  ) %>%
  mutate(year = as.integer(year))

pres_elect <- x %>%
  select(
    year, state, party_simplified, candidatevotes, totalvotes
  ) %>%
  group_by(year, state, party_simplified) %>%
  summarise(
    party_votes = sum(candidatevotes),
    total_votes = mean(totalvotes),
    .groups = "drop"
  ) %>%
  pivot_wider(names_from = party_simplified, values_from = party_votes)


votes_crime <- crime %>%
  left_join(pres_elect, by = c("year", "state"))%>%
  arrange(year, state)

write_rds(votes_crime, "votes_crime_1979-2020_data.rds")

write_rds(pres_elect, "pres_elect.rds")

write_rds(crime, "crime.rds")

