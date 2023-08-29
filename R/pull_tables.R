#' Pull Tables
#'
#' Will pull figures from a defined folder if they are named "tab_xx"
#'
#' @param dir directory with tables
#'
#' @return a list of tables items
#'
#' @export

pull_tables <- function(dir = here::here("output")){

  stopifnot(dir.exists(dir))

  tab_targets <- fs::dir_ls(dir, regexp = "tab.+rds")
  tab_use <- purrr::map(tab_targets, readRDS)
  names(tab_use) <- tools::file_path_sans_ext(basename(tab_targets))

  tab_use

}
