#' Embed custom font
#'
#' Embed custom fonts in graphs.
#' @param name The name of the graph
#' @param width The width of the graph. Defaults to NA.
#' @param height The height of the graph. Defaults to NA.
#'
#' @import ggplot2
#' @importFrom showtext showtext_auto
#'
#' @export

ggsave_embed <- function(name, width = NA, height = NA){
  showtext_auto()
  ggsave(name, width = width, height = height)
}
