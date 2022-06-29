#' Format a Flextable
#' @param ft a flextable object, the flextable to be formatted.
#' @param width_perc a numeric between 1 and 100 indicating the percent width
#'    to expand to fill with a default of \code{100}.
#' @param body_font a numeric, the font of the table body with default of \code{10}.
#' @returns a formatted flextable
#' @export

format_flex_table <- function(ft, width_perc = 100, body_font = 10){

  stopifnot(class(ft)!="flextable")
  stopifnot(width_perc < 101 && width_perc > 0)
  stopifnot(body_font>2 && body_font < 100)

  if(!is.null(width_perc)){
    if(!is.numeric(width_perc)) {
      stop('width_perc must be numeric')
    }
    if(width_perc <1 | width_perc > 100) {
      stop('width_perc must be between 1 and 100')
    }
    ft <- flextable::width(ft, width = ((width_perc/100)*7)/length(ft$col_keys))

    ft <- flextable::fontsize(ft, part = "body", size = body_font)

    return(ft)

  }

}
