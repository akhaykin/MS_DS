tmp <- tempfile()
download.file(
  "https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/42MVDX#",
  tmp
)

votes <- rvest::read_html(tmp)

votes %>%
  rvest::html_nodes("#content") %>%
  rvest::html_text()
library(tidyverse)

crime <- read_csv("./Proposal/violent_crimes_usafacts.csv") %>%
  slice(14:64) %>%
  rename(state = "Years") %>%
  mutate(across(c(-state), as.integer)) %>%
  pivot_longer(
    -state,
    names_to = "Year",
    values_to = "tot_violent_crime"
  )
pres_elect <- x %>%
  select(
    year, state, party_simplified, candidatevotes, totalvotes
  ) %>%
  group_by(year, state, party_simplified) %>%
  summarise(
    party_votes = sum(candidatevotes),
    total_votes = mean(totalvotes)
  ) %>%
  pivot_wider(names_from = party_simplified, values_from = party_votes)
