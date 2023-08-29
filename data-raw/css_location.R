scss_loc <- here::here('inst', 'quarto', 'idreport', '_extensions',
                       'idreport', 'theme.scss')

sass::sass(input = sass::sass_file(scss_loc),
           output = here::here('inst', 'assets','main.css'),
           cache = FALSE)
