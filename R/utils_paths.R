project_path <- function(...) {
  file.path(getwd(), ...)
}

data_path <- function(...) {
  file.path(getwd(), "data", ...)
}

report_path <- function(...) {
  file.path(getwd(), "reports", ...)
}
