
# render quarto book ------------------------------------------------------

if(dir.exists(here::here('book'))){
  system2('quarto', 'render book')
}

