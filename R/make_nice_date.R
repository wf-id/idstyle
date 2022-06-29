#' Format a IS18001 Date to US Convention
#' @param x a date object
#' @returns a date string
#' @export
nice_date <- function(x){
  format(x, "%d %B, %Y")
}
