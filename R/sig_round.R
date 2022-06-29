#' Round to Significant Digits
#'
#' Preserves trailing zeros when rounding to significant digits
#'
#' @param x a numeric to be formatted
#' @param digitz an integer representing number of digits to maintain

siground <- function(x, digitz = 1){

  stopifnot(is.numeric(digitz))

  nsmall_use <- ifelse(digitz<0,0,digitz)

  format(round(x, digitz), nsmall = nsmall_use)
}
