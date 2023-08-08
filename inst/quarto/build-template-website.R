
# render quarto website ---------------------------------------------------

if(dir.exists(here::here('website'))){
  system2('quarto', 'render website')
}

