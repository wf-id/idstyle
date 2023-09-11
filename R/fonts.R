#' Wake Forest Atrium Font Collections
#' @description
#' contains a list of font collections via \code{bslib::font_collection()}
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


#' Wake Forest Atrium System Fonts
#' @description
#' contains a list of character strings of system fonts
#'
#' @export
wake_system_fonts <- list(sans_serif = 'sans',
                          serif = 'serif')

#' Wake Forest Serif Font
#' @description
#' a character string of the serif font families, comma delimited
#'
#' @export
wake_serif <- wake_font_collections$serif$families

#' Wake Forest Serif Font
#' @description
#' a character string of the sans serif font families, comma delimited
#'
#' @export
wake_sansserif <- wake_font_collections$sans_serif$families



#' Register Font Awesome Fonts for Use
#' @description
#' Registers Font Awesome 6 Free with package \code{systemfonts}. Use
#'     Font Awesome regular icons with font-family 'fa' and solid icons
#'     with font-family 'fa-solid'
#'
#' @param verbose default \code{TRUE}
#'
#' @export
#'
register_font_awesome <- function(verbose = T){

  stopifnot(is.logical(verbose))

  if(!all(c('fa','fa-solid') %in% sysfonts::font_families())){

pkg_fonts <- list.files(system.file('assets','fonts',
                                    package = 'idstyle'),
                        full.names = T)


fa <- pkg_fonts[grepl('Awesome', pkg_fonts)]

sysfonts::font_add(family = 'fa',
                   regular = fa[grepl('Regular',fa)])
if(verbose) cli::cli_alert_success('`fa` font (font-awesome regular) registered for use.')


sysfonts::font_add(family = 'fa-solid',
                   regular = fa[grepl('Solid',fa)])

if(verbose) cli::cli_alert_success('`fa-solid` font (font-awesome solid) registered for use.')


  } else{

    if(verbose) cli::cli_alert_info('`fa` and `fa-solid` fonts already registered.')

  }

}

