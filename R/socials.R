#' Sarah's socials
#'
#' Includes my socials for publishing images
#'
#' @importFrom dplyr mutate
#' @import assertthat
#'
#' @export
#' @return A HTML character vector
#'
#' @examples
#' library(ggplot2)
#' library(ggtext)
#' ggplot() +
#'   labs(caption = socials) +
#'   theme(plot.caption = element_textbox_simple())

socials <- paste0("<span style='font-family:fa;'>&#xf09b; </span>",
                  "szeller42",
                  "<span style='font-family:fa;'>&#f099; </span>",
                  "szeller42")
