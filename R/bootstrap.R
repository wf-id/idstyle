#' Wake Forest Atrium ID Bootstrap Theme
#' @description
#' Creates a Bootstrap theme object with WF Atrium ID colors.
#' To overwrite options or edit other theme options, pass the theme to `bslib::bs_theme_update()`.
#'
#' @param font_scale default `0.85`, a scalar multiplier to apply to the base font size. For example, a value of 1.5 scales font sizes to 150% and a value of 0.8 scales to 80%. Must be a positive number.
#'
#' @export
#'
id_bs_theme <- function(font_scale = 0.85){

  bslib::bs_theme(version = 5, bootswatch = 'cosmo',
                  #colors
                  bg = wake_all_colors$white,
                  fg = wake_all_colors$black,
                  default = wake_all_colors$wakegray,
                  primary = wake_all_colors$black,
                  secondary = wake_all_colors$primary,
                  success = wake_all_colors$wakegreen,
                  info = wake_all_colors$atriumteal,
                  warning = wake_all_colors$wakeyellow,
                  danger = wake_all_colors$wakered,
                  #fonts
                  base_font = wake_font_collections$sans_serif,
                  heading_font = wake_font_collections$serif,
                  font_scale = font_scale,
                  spacer = ".7rem") |>
    bslib::bs_add_variables('headings-font-weight'= '700') |>
    bslib::bs_add_rules(paste0('.bslib-value-box .value-box-area * {font-family: ',
                        toString(wake_font_collections$sans_serif$families),
                        '!important;}'))

}
