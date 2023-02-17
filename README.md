<!-- badges: start -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R-CMD-check](https://github.com/szeller42/sarahsFunctions/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/szeller42/sarahsFunctions/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->


# sarahsFunctions
A set of R functions that I use often.


## Installation

`remotes::install_github("szeller42/sarahsFunctions")`

If the fonts do not load correctly, please run the following lines:

```{r}
remove.packages('Rttf2pt1')
remotes::install_version('Rttf2pt1', version = '1.3.8')
font_import(paths = 'C:/Users/YOUR_NAME/Documents/Fonts')
loadfonts(device = 'win')
loadfonts()`
```

## Functions

-   `df_to_qmd_table` converts a `data.frame` or tibble to a qmd table.
-   `custom_theme` is the theme I use for ggplots.
-   `ggsave_embed` enables saving ggplots with embedded fonts to PDF.
