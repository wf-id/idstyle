#' Use Wake CSS
#'
#' @description  Applies header info via \code{link[htmlwidgets]{prependContent}()}
#' for using wake css within any html widget (e.g. leaflet map, plotly graph).
#' **This is only needed for stand alone widgets**, as widgets within an html page
#' (such as quarto \code{idreport}) will have this css applied to the document already.
#'
#' @param x html widget object
#'
#' @export
useWakeCss <- function(x){

  css_loc <- get_css_location()
  css <- paste0('<style type = "text/css">\n',
                idtools::generate_template(css_loc,
                                           glue_open = '{{{',
                                           glue_close = '}}}'),
                '\n</style>')

  x |>
    htmlwidgets::prependContent(htmltools::HTML(css))

}
