#' Return Main CSS location
#' @description
#' Returns a character string of the main Wake Forest ID CSS
#'
#'
#' @export
#'
get_css_location <- function(){
  system.file('assets', 'main.css', package = 'idstyle')
}
