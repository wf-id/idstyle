#' Format a Flextable
#' @param ft a flextable object, or an object that can be coerced into a flextable
#'     object, to be formatted.
#' @param width_perc a numeric between 1 and 100 indicating the percent width
#'    to expand to fill with a default of \code{80}. \code{NULL} for automatic
#'    flextable sizing.
#' @param body_font a numeric, the font of the table body with default of \code{10}.
#' @param header_font a numeric, the font of the table header with default of \code{10}.
#' @param color a string, default 'none' returns a black and white table,
#'     for 'wake' and 'atrium' a gray striped table with a gold or teal
#'     background header
#' @returns a formatted flextable
#' @export

format_flex_table <- function(ft, width_perc = 80,
                              body_font = 10, header_font = 10,
                              color = c('none', 'id', 'wake', 'atrium')){

  color <- match.arg(color)

  # stopifnot(class(ft)=="flextable")
  if(inherits(ft, 'gtsummary')) ft <- gtsummary::as_flex_table(ft)
  if(!inherits(ft,"flextable")) ft <- flextable::flextable(ft)

  stopifnot((width_perc < 101 && width_perc > 0) | is.null(width_perc))
  stopifnot(body_font>2 && body_font < 100)
  stopifnot(header_font>2 && header_font < 100)


  if(!is.null(width_perc)){
    if(!is.numeric(width_perc)) {
      stop('width_perc must be numeric')
    }
    if(width_perc <1 | width_perc > 100) {
      stop('width_perc must be between 1 and 100')
    }
    ft <- flextable::width(ft, width = ((width_perc/100)*7)/length(ft$col_keys))
  }

    ft <- flextable::fontsize(ft, part = "body", size = body_font) |>
      flextable::fontsize(part = 'header', size = header_font) |>
      flextable::fontsize(part = "footer", size = body_font*0.9)

    if(color=='wake'){
      ft <- flextable::theme_zebra(ft, odd_header = wake_gold, even_header = wake_darkgold) |>
      flextable::color(color = 'white', part = 'header') |>
        flextable::color(color = 'white', part = 'footer') |>
        flextable::bold(bold = FALSE, part = 'footer')
    }

    if(color=='atrium'){
      ft <- flextable::theme_zebra(ft, odd_header = atrium_teal, even_header = atrium_tealshadow) |>
        flextable::color(color = 'white', part = 'header') |>
        flextable::color(color = 'white', part = 'footer') |>
        flextable::bold(bold = FALSE, part = 'footer')
    }

    if(color=='id'){
      ft <- flextable::theme_zebra(ft, even_header = wake_all_colors$wakenavy,
                                   odd_header = 'black') |>
        flextable::color(color = 'white', part = 'header') |>
        flextable::color(color = 'white', part = 'footer') |>
        flextable::bold(bold = FALSE, part = 'footer')
    }

    return(ft)

}
