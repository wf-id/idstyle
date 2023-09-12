.onLoad <- function(libname, pkgname){


  # load Google fonts
  sysfonts::font_add_google('Cormorant')
  sysfonts::font_add_google('Nunito Sans')


  # set gtsummary theme
  suppressMessages(gtsummary::theme_gtsummary_journal("jama", set_theme = TRUE))


  # set ggplot2 theme & palettes
  theme_set_id()

  showtext::showtext_auto()

  invisible()

}


.onAttach <- function(libname, pkgname){


  header <- cli::rule(
    left = cli::style_bold("Attaching idstyle package"),
    right = paste('v',utils::packageVersion('idstyle')))

  chk <- cli::col_green(cli::symbol$tick)
  info <- cli::col_blue(cli::symbol$info)

  msg <- paste0(header,
                '\n', chk,
               ' Nunito Sans & Cormorant google fonts loaded with package `sysfonts`',

               '\n\n', chk,
               ' gtsummary journal jama theme set',
               '\n', info,
               ' To revert to gtsummary default theme, run `gtsummary::reset_gtsummary_theme()`',

               '\n\n', chk,
               ' ggplot2 theme `theme_id()` set & default color scales updated to a colorblind safe palette',
               '\n', info,
               ' To revert to ggplot default theme & color scales, run `theme_set_gg()`',
               '\n', info,
               ' To revert to ggplot default color scales only, run `palette_set_gg()`',

               '\n\n', info,
               ' showtext::showtext_auto() has been run; showtext_auto(FALSE) to turn this off.')

  packageStartupMessage(msg)


}


.onUnload <- function(libpath){

  theme_set_gg()

  gtsummary::reset_gtsummary_theme()

}
