#' Clean theme for ggplot
#'
#' Creates a custom theme for ggplot, so that all graphs have a coherent look.
#'
#' @import ggplot2
#' @importFrom sysfonts font_add_google
#' @importFrom showtext showtext_auto
#' @import curl
#' @import jsonlite
#'
#' @export
#'
#' @examples
#' data(donut_data)
#' library(ggplot2)
#' ggplot(aes(x = age, y = dist_km), data = donut_data) +
#' geom_point() +
#' clean_theme()

clean_theme <- function(){
  # load font
  showtext_auto()

  theme_minimal() +
    theme(text = element_text(family = "Open Sans"),
          plot.title = element_text(size = 18),
          plot.subtitle = element_text(size = 13,
                                       color = "grey50"),
          axis.line.x = element_line(colour = "grey40"),
          axis.text.y = element_text(size = 7,
                                     color = "grey10",
                                     hjust = 1),
          axis.text.x = element_text(hjust = 0,
                                     size = 7,
                                     color = "grey10",
                                     vjust = 0.5),
          axis.title.x = element_text(vjust = -.5,
                                      hjust = .5),
          # axis.title.y = element_text(hjust = -1),
          panel.grid = element_blank(),
          panel.spacing = unit(2, "lines")
          )
}
