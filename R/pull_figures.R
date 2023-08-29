#' Pull Figures
#'
#' Will pull figures from a defined folder if they are named "fig_xx"
#'
#' @param dir directory with figures
#'
#'
#' @return a list of plot items
#'
#' @export

pull_figures <- function(dir = here::here("output")){

  stopifnot(dir.exists(dir))

  fig_targets <- fs::dir_ls(dir, regexp = "fig.+rds")

  fig_use <- purrr::map(fig_targets, readRDS)

  names(fig_use) <- tools::file_path_sans_ext(basename(fig_targets))

  fig_use

}
