#' Public Domain Komi-Zyrian data
#'
#' A dataset containing 877685 tokens from Public Domain sources.
#' Digitalized in Fenno-Ugrica and proofread in FU-Lab.
#' Ivan Belykh's works made available by the author.
#'
#' @format Data frame with 877685 tokens
#' \describe{
#'   \item{sentence_id}{sentence id, unique within a text}
#'   \item{sentence}{sentence text}
#'   \item{token}{token in lowercase}
#'   \item{text_name}{name of the text in original corpus}
#'   ...
#' }
#' @source \url{https://github.com/langdoc/kpv-lit}
#' @source \url{https://fennougrica.kansalliskirjasto.fi/}
#' @source \url{http://komikyv.org/}
"kpv"
