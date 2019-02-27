library(tidyverse)
library(xml2)
library(glue)

# This is part of the xpath that leads to annotation value

annotation_path <- function(prefix){
  str_glue("//TIER[starts-with(@TIER_ID, '{prefix}')]/ANNOTATION/*/ANNOTATION_VALUE")
}

elan_files <- dir("data-raw/", pattern = "kpv_izva18440000Castren.+eaf$", full.names = TRUE)
parse_castren_eaf("data-raw//kpv_izva18440000Castren-7.eaf")

parse_castren_eaf <- function(xml_file, session_name){
  xml_content <- read_xml(xml_file)
  tibble(
    sentence_id = xml_content %>%
      xml_find_all(annotation_path("ref")) %>%
      xml_text,
    sentence = xml_content %>%
      xml_find_all("//TIER[starts-with(@TIER_ID, 'orth@')]/ANNOTATION/*/ANNOTATION_VALUE") %>%
      xml_text,
    sentence_orig_orth = xml_content %>%
      xml_find_all(annotation_path("orth-orig")) %>%
      xml_text) %>%
  mutate(doc_id = session_name,
         sentence_id = str_glue("{session_name}{sentence_id}")) %>%
  select(doc_id, sentence_id, sentence, sentence_orig_orth) %>%
  as.data.frame()
}

castren <- elan_files %>%
  map_df(~ {
    elan_session_name <- str_extract(.x, "(?<=/).+(?=\\.eaf)")
    parse_castren_eaf(xml_file = .x, session_name = elan_session_name)
    }
  )

usethis::use_data(castren, overwrite = TRUE)
