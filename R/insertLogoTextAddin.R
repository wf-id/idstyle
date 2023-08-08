#' Insert IDEAS Text Logo in Markdown.
#'
#' Call this function as an addin to insert the IDEAS text logo (markdown syntax) at the cursor position.
#'
#' @importFrom rstudioapi insertText
#'
#' @export
insertLogoTextMDAddin <- function() {
  rstudioapi::insertText("{{< fa head-side-virus >}}**&nbsp;&nbsp;I&nbsp;D&nbsp;E&nbsp;A&nbsp;S**<br>
[**I**nfectious **D**isease **E**pidemiology and **A**pplied **S**tatistics]{.serif .smaller}")
}

#' Insert IDEAS Text Logo in HTML
#'
#' Call this function as an addin to insert the IDEAS text logo (HTML syntax) at the cursor position.
#'
#' @importFrom rstudioapi insertText
#'
#' @export
insertLogoTextHTMLAddin <- function() {
  rstudioapi::insertText('<span class="san-serif" style="font-size: 1em;"><i class="fa-solid fa-head-side-virus" aria-label="head-side-virus"></i><span style="font-weight: 700;">&nbsp;&nbsp;I&nbsp;D&nbsp;E&nbsp;A&nbsp;S</span></span> <br> <span class="serif" style="font-size: 0.9em;"><span style = "font-weight: 700;">I</span>nfectious <span style = "font-weight: 700;">D</span>isease <span style = "font-weight: 700;">E</span>pidemiology and <span style = "font-weight: 700;">A</span>pplied <span style = "font-weight: 700;">S</span>tatistics</span>')
}
