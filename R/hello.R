
.onLoad <- function(libname, pkgname) {
  # data <- utils::read.csv(
  #   file = system.file("data.csv", package = "bar"),
  # )
  data <- readr::read_csv(
    file = system.file("data.csv", package = "rbib"),
    col_types = readr::cols(.default = readr::col_character())
  )
  options("bar.data" = data)
}
