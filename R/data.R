#' Public Domain Komi-Zyrian data
#'
#' A dataset containing sentences from Public Domain sources.
#' Digitalized in Fenno-Ugrica and proofread in FU-Lab.
#' Ivan Belykh's works made available by the author. Four Battles
#' book proofread by Niko Partanen. Current version contains only data
#' comparable with other languages, also the idea is to have all possible
#' Komi-Zyrian data here and the sentence_id would tell which are
#' matching.
#'
#' @format Data frame with Komi-Zyrian data
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   ...
#' }
#' @source \url{https://github.com/langdoc/kpv-lit}
#' @source \url{https://fennougrica.kansalliskirjasto.fi/}
#' @source \url{http://komikyv.org/}
"kpv"

#' Public Domain Komi-Permyak data
#'
#' A dataset containing sentences from Public Domain sources.
#' Four Battles book proofread by Niko Partanen.
#'
#' @format Data frame with a Komi-Permyak book
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   ...
#' }
#' @source \url{http://urn.fi/URN:NBN:fi-fe2014101045137}
"koi"

#' Public Domain Udmurt data
#'
#' A dataset containing sentences from Public Domain sources.
#' Four Battles book proofread by Niko Partanen.
#'
#' @format Data frame with an Udmurt book
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   ...
#' }
#' @source \url{http://urn.fi/URN:NBN:fi-fe2014092444879}
"udm"

#' Public Domain Erzya data
#'
#' A dataset containing sentences from Public Domain sources.
#' Four Battles book proofread by Niko Partanen.
#'
#' @format Data frame with an Erzya book
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   ...
#' }
#' @source \url{http://urn.fi/URN:NBN:fi-fe2014082633380}
"myv"

#' Public Domain Meadow Mari data
#'
#' A dataset containing sentences from Public Domain sources.
#' Four Battles book proofread by Niko Partanen.
#'
#' @format Data frame with a Meadow Mari book
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   ...
#' }
#' @source \url{http://urn.fi/URN:NBN:fi-fe2014091844781}
"mhr"

#' Public Domain Meadow Mari data
#'
#' sje18930000-halasz1893a-22
#' (public domain; digitized, transcribed and annotated
#' by the Pite Saami Documentation Project (Joshua Wilbur, Iris Perkmann))
#'
#' @format Example of digitalized Pite Saami data
#' \describe{
#'   \item{doc_id}{name of the text in original corpus}
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   \item{sentence_eng}{English translation}
#'   \item{sentence_hun}{Hungarian translation}
#'   \item{sentence_orig_orth}{Original orthography}
#'   ...
#' }
#' @source \url{http://saami.uni-freiburg.de/psdp/syntax}
"psdp"
