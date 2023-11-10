
# render quarto dashboard --------------------------------------------------

if(dir.exists(here::here('dashboard'))){
  # system2('quarto', 'render report/report.qmd')
  setwd('dashboard') # Changing directory is the only way I got the "Other Formats"
  #  pdf link to be correct?
  system2('quarto', 'dashboard index.qmd')
  setwd(here::here())
}

