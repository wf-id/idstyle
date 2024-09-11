#' Remove plotly duplicates in legend
#' @description
#' Removes duplicates from a plotly legend where groups are shown in parentheses and numbered
#'
#' @param p a plotly
#'
#' @export
#'
remove_plotly_dups <- function(p){
  for (i in seq_along(p$x$data)) {
    # Is the layer the first entry of the group?
    is_first <- grepl("^\\(.*?,1\\)", p$x$data[[i]]$name)
    # Extract the group identifier and assign it to the name and legendgroup arguments
    p$x$data[[i]]$name <- gsub("^\\((.*?),\\d+\\)", "\\1", p$x$data[[i]]$name)
    p$x$data[[i]]$legendgroup <- p$x$data[[i]]$name
    # Show the legend only for the first layer of the group
    if (!is_first) p$x$data[[i]]$showlegend <- FALSE
  }
  return(p)
}
