source("R/utils_paths.R")
source("R/utils_checks.R")

required_packages <- c(
  "tidyverse",
  "readr",
  "dplyr",
  "ggplot2",
  "fixest",
  "MatchIt",
  "broom"
)

check_required_packages(required_packages)

message("Ambiente pronto para o projeto.")
