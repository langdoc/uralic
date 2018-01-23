library(tidyverse)
library(glue)

fb <- read_tsv("data-raw/four_battles.tsv",
               col_names = c("kpv", "koi", "myv", "udm", "mhr"),
               col_types = "ccccc",
               na = 'NA') %>%
  filter(! kpv == '') %>%
  mutate(sentence_id = glue('four_battles-{str_pad(rownames(.), width = 3, pad = 0)}')) %>%
  select(sentence_id, everything())

kpv <- fb %>%
  select(sentence_id, kpv) %>%
  as.data.frame()
koi <- fb %>%
  select(sentence_id, koi) %>%
  as.data.frame()
myv <- fb %>%
  select(sentence_id, myv) %>%
  as.data.frame()
udm <- fb %>%
  select(sentence_id, udm) %>%
  as.data.frame()
mhr <- fb %>%
  select(sentence_id, mhr) %>%
  as.data.frame()

devtools::use_data(kpv, overwrite = TRUE)
devtools::use_data(koi, overwrite = TRUE)
devtools::use_data(myv, overwrite = TRUE)
devtools::use_data(udm, overwrite = TRUE)
devtools::use_data(mhr, overwrite = TRUE)
