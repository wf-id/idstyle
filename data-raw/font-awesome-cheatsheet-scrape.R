url <- 'https://kapeli.com/cheat_sheets/Font_Awesome.docset/Contents/Resources/Documents/index'
library(rvest)
html_content <- read_html(url)
h2 <- html_content |> html_elements(css = 'h2') |> html_text() |>
  gsub(pattern = '\n', replacement = '', fixed = T)
todrop <- which(h2 %in% c('Guide', 'Brands'))
h2 <- h2[-todrop]
html_tables <- html_content |> html_table()
html_tables <- html_tables[-todrop]

library(tidyverse)
dat <- list_rbind(html_tables,names_to = 'id')

dat <- dat |> left_join(
                  data.frame(id = seq_along(h2),
                             group = h2),
                  by = 'id')

dat <- dat |>
  transmute(class = sub('fa-', '', X1), name = X3, unicode = X4,
            group = group) |>
  unique.data.frame()

fa_lookup <- dat


usethis::use_data(fa_lookup)
