.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Loading Open Sans")
}

.onLoad <- function(libname, pkgname) {
  # check if Open Sans is loaded, else load it
  list_fonts <- sysfonts::font_files() |> as.data.frame()
  if ("Open Sans" %in% list_fonts$family == FALSE) {
    font_add_google("Open Sans")
  }
}
