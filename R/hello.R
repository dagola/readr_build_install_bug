
.onLoad <- function(libname, pkgname) {
  data <- read.csv(
    file = system.file("data.csv", package = "bar"),
  )
  data <- readr::read_csv(
    file = system.file("data.csv", package = "bar"),
    col_types = readr::cols(.default = readr::col_character())
  )
  options("bar.data" = data)
}
