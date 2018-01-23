library(tidyverse)
library(xml2)
library(glue)

# This is part of the xpath that leads to annotation value

annotation_path <- function(prefix){
  glue("//TIER[starts-with(@TIER_ID, '{prefix}')]/ANNOTATION/*/ANNOTATION_VALUE")
}

elan_file <- "data-raw/sje18930000a-halasz1893a-22.eaf"
elan_session_name <- str_extract(elan_file, "(?<=/).+(?=\\.eaf)")

psdp <- read_xml(elan_file) %>%
  xml_find_all("/") %>%
  map_df(~ tibble(
      sentence_id = .x %>%
        xml_find_all(annotation_path("ref")) %>%
        xml_text,
      sentence = .x %>%
        xml_find_all(annotation_path("orth@")) %>%
        xml_text,
      sentence_eng = .x %>%
        xml_find_all(annotation_path("ft-eng")) %>%
        xml_text,
      sentence_orig_orth = .x %>%
        xml_find_all(annotation_path("orth-orig")) %>%
        xml_text,
      sentence_hun = .x %>%
        xml_find_all(annotation_path("ft-hun")) %>%
        xml_text)) %>%
  mutate(doc_id = elan_session_name,
         sentence_id = glue("{elan_session_name}{sentence_id}")) %>%
  select(doc_id, sentence_id, sentence, sentence_eng, sentence_hun, sentence_orig_orth) %>%
  as.data.frame()

devtools::use_data(psdp, overwrite = TRUE)
