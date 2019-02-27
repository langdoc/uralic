library(tidyverse)
library(glue)

fb <- read_tsv("data-raw/four_battles.tsv",
               col_names = c("kpv", "koi", "myv", "udm", "mhr"),
               col_types = "ccccc",
               na = 'NA') %>%
  filter(! kpv == '') %>%
  mutate(sentence_id = glue('four_battles-{str_pad(rownames(.), width = 3, pad = 0)}')) %>%
  select(sentence_id, everything()) %>%
  mutate(document_id = "four_battles")

kpv <- fb %>%
  select(sentence_id, document_id, kpv) %>%
  rename(sentence = kpv) %>%
  as.data.frame()
koi <- fb %>%
  select(sentence_id, document_id, koi) %>%
  rename(sentence = koi) %>%
  as.data.frame()
myv <- fb %>%
  select(sentence_id, document_id, myv) %>%
  rename(sentence = myv) %>%
  as.data.frame()
udm <- fb %>%
  select(sentence_id, document_id, udm) %>%
  rename(sentence = udm) %>%
  as.data.frame()
mhr <- fb %>%
  select(sentence_id, document_id, mhr) %>%
  rename(sentence = mhr) %>%
  as.data.frame()

usethis::use_data(kpv, overwrite = TRUE)
usethis::use_data(koi, overwrite = TRUE)
usethis::use_data(myv, overwrite = TRUE)
usethis::use_data(udm, overwrite = TRUE)
usethis::use_data(mhr, overwrite = TRUE)
