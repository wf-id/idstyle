#' Create Font Awesome html span
#' @description
#' Takes the font awesome icon class and creates the html span to display the icon
#'
#' @param icon_class a string or vector of icon class(es) (e.g. head-side-virus, cat, user-doctor)
#' @param solid default \code{TRUE} whether to use solid or regular icon (most icons are solid, some have both)
#'
#' @export
#'
fa_span <- function(icon_class, solid = TRUE){

  stopifnot(is.logical(solid))

  icon_lookup <- idstyle::fa_lookup

  icon_lookup <- icon_lookup |> dplyr::select(class, unicode) |> unique.data.frame()

  unicode <- icon_lookup$unicode[match(icon_class, icon_lookup$class)]

  if(any(is.na(unicode[!is.na(icon_class)]))){
    stop('Not all icons were found. see idstyle::fa_lookup for full list')
  }

  out <- paste0("<span style='font-family:\"fa",
                ifelse(solid, '-solid', ''),
                "\";'>&#x",
                unicode,
                ";</span>")

  # fix NA values
  out[is.na(icon_class)] <- NA

  out
}


#' Use Font Awesome icons as ggplot geom
#' @description
#' A ggplot2 geom that displays font awesome icons. Requires libraries
#'      \code{showtext} and \code{ggtext}. See
#'      \href{https://fontawesome.com/v6/icons?o=a&m=free}{Font Awesome Free V6 Icons List}
#'      for a full list of icons available. Brands are currently NOT available. For
#'      more control of the aesthetics, you may need to use \code{\link[ggtext]{geom_richtext}()}
#'      directly and supply the full \code{\link[ggplot2]{aes}()} yourself, i.e.
#'      \code{geom_richtext(aes(label = fa_span(column_name), ...), label.color = NA, fill = NA)}
#'
#' @param icon_class the icon class (e.g. head-side-virus, cat, user-doctor), can be a single string or a column in your plot data that contains valid icon strings
#' @param solid default \code{TRUE} whether to use solid or regular icon (most icons are solid, some have both)
#' @param label.color default \code{NA} does not draw a outline around the icon (a typical ggplot2 label style); passed to \code{\link[ggtext]{geom_richtext}}
#' @param fill default \code{NA} does not fill in space around the icon (transparent); passed to \code{\link[ggtext]{geom_richtext}}
#' @param ... other arguments passed to \code{\link[ggtext]{geom_richtext}}
#'
#' @importFrom rlang .data
#'
#' @export
#'
geom_fontawesome <- function(icon_class, solid = TRUE,
                             label.color = NA, fill = NA,
                             ...){

  requireNamespace('showtext', quietly = TRUE)
  requireNamespace('ggtext', quietly = TRUE)

  register_font_awesome(verbose = F)


  ind <- try(length(icon_class)==1,silent = TRUE)
  if("try-error" %in% class(ind)) ind <- FALSE

  if(ind){

    ggtext::geom_richtext(ggplot2::aes(
      label = fa_span(icon_class = icon_class, solid = solid)
    ),
    fill = fill, label.color = label.color,
    ...)

  } else {

  ggtext::geom_richtext(ggplot2::aes(
    label = fa_span(icon_class = .data[[as.character(substitute(icon_class))]],
                    solid = solid),
    ),
    fill = fill, label.color = label.color,
    ...)
  }

}




