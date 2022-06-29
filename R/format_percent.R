#' Format Percentage to Significant Digits
#'
#' @param x a numeric to be formatted
#' @param digitz an integer the number of digits to be formatted with default of \code{1}
#' @return a formatted string
#' @examples
#'
#' format_perc(.0012343)
#' # Preserved significant digit
#' format_perc(.001)
#' @export

format_perc <- function(x, digitz = 1){
  format(round(x*100, digitz), nsmall = 1)
}
