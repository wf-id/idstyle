#' Wake Forest Atrium Font Collections
#' @description
#' contains a list of font collections via \code{bslib::font_collection()}
#' @importFrom bslib font_collection
#' @importFrom bslib font_google
#'
#' @export
wake_font_collections <- list(sans_serif = bslib::font_collection(
                                          bslib::font_google('Nunito Sans'),
                                          'Arial', 'sans serif'),
                            serif = bslib::font_collection(
                                          bslib::font_google('Cormorant'),
                                          'Garamond', 'serif')
                            )

#' Wake Forest Atrium Google Fonts
#' @description
#' contains a list of character strings of Google fonts
#'
#' @export
wake_google_fonts <- list(sans_serif = 'Nunito Sans',
                          serif = 'Cormorant')
