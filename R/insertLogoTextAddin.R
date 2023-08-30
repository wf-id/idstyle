#' Insert IDEAS Text Logo in Markdown.
#'
#' Call this function as an addin to insert the IDEAS text logo (markdown syntax) at the cursor position.
#'
#'
#' @export
insertLogoTextMDAddin <- function() {
  rstudioapi::insertText(idstyle::logoTextMD)
}

#' Insert IDEAS Text Logo in HTML
#'
#' Call this function as an addin to insert the IDEAS text logo (HTML syntax) at the cursor position.
#'
#'
#' @export
insertLogoTextHTMLAddin <- function() {
  rstudioapi::insertText(idstyle::logoTextHTML)
}
