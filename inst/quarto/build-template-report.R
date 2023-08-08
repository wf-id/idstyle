
# render quarto report ----------------------------------------------------

if(dir.exists(here::here('report'))){
  # system2('quarto', 'render report/report.qmd')
  setwd('report') # Changing directory is the only way I got the "Other Formats"
  #  pdf link to be correct?
  system2('quarto', 'render report.qmd')
  setwd(here::here())
}

