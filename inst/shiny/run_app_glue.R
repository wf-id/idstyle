#' @export
run_app <- function() {
  appDir <- system.file("shinyapp", package = "{{project_name}}")
  if (appDir == "") {
    stop("Could not find app dir shinyapp. Try re-installing `{{project_name}}`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
