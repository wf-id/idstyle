#' Make an R Package
#'
#' @description This function makes an R package for ID with standard folder
#' structure and option for shiny application.
#'
#' @param path Path automatically set by id_project.dcf (see
#'    \code{./rstudio/templates/project/})
#' @param shiny default \code{FALSE} does not include a shiny application in the package
#'
#' @details Behind the scenes, this function used by id_package.dcf when
#' a user selects New project... > New Directory > ID R Package and Shiny Templates
#' within the RStudio IDE. See \code{./rstudio/templates/project/}.
#'
#' @importFrom usethis create_package
#' @importFrom here here
#' @importFrom cli cli_alert_success
#' @importFrom cli cli_alert_danger
#' @importFrom cli cli_alert_warning
#' @importFrom idtools generate_template
#'
#' @return Returns nothing.  See description above.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   make_package(path = "~/test_project")
#' }
#' \dontrun{
#'   make_package(path = "~/test_project", shiny = TRUE))
#' }

make_package <- function(
    path = here::here(),
    shiny = FALSE
) {

  project_name <- basename(path)

  currentwd <- getwd()
  on.exit(setwd(currentwd))

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # If the project object does not exist add it.
  if (length(list.files(path = path, pattern = "\\.Rproj$")) == 0) {
    usethis::create_project(path = path, rstudio = TRUE, open = FALSE)
  }

  # create R package

    #for all packages
    usethis::create_package(path = path, open = FALSE, rstudio = FALSE,
                            roxygen = TRUE)
    news_glue <- system.file('rpackage', 'NEWS-template.md', package = 'idstyle')
    news_glue <- idtools::generate_template(news_glue,
                                            glue_open = '{{',
                                            glue_close = '}}')
    writeLines(news_glue, con = file.path(path, 'NEWS.md'))
    cli::cli_alert_success('R package created')

    if(shiny){
      #for only shiny packages
      shiny_path <- system.file('shiny', 'idshinyapp', package = 'idstyle')
      shiny_run_glue <- system.file('shiny', 'run_app_glue.R', package = 'idstyle')
      shiny_run_glue <- idtools::generate_template(shiny_run_glue,
                                                   glue_open = '{{',
                                                   glue_close = '}}')
      shiny_readme_glue <- system.file('shiny', 'README-template-shiny.Rmd',
                                       package = 'idstyle')
      shiny_readme_glue <- idtools::generate_template(shiny_readme_glue,
                                                      glue_open = '{{',
                                                      glue_close = '}}')

      # ensure inst exists
      dir.create(file.path(path, 'inst', 'shinyapp'),
                 recursive = TRUE, showWarnings = FALSE)
      file.copy(list.files(shiny_path, full.names = TRUE, recursive = TRUE),
                file.path(path, 'inst', 'shinyapp'),
                recursive = TRUE, overwrite = FALSE)
      writeLines(shiny_run_glue, con = file.path(path, 'R', 'run_app.R'))
      writeLines(shiny_readme_glue, con = file.path(path, 'README.Rmd'))
      cli::cli_alert_success('shiny app template created')
    } else{
      #for non-shiny packages
      package_readme_glue <- system.file('rpackage', 'README-template-rpackage.Rmd',
                                       package = 'idstyle')
      package_readme_glue <- idtools::generate_template(package_readme_glue,
                                                        glue_open = '{{',
                                                        glue_close = '}}')
      writeLines(package_readme_glue, con = file.path(path, 'README.Rmd'))
      cli::cli_alert_success('README.Rmd added')
    }


  gitignorefile <- system.file('git', '.gitignore', package = 'idstyle')
  gitattributesfile <- system.file('git', '.gitattributes', package = 'idstyle')
  file.copy(gitignorefile, to = file.path(path, '.gitignore'),
            overwrite = TRUE)
  file.copy(gitattributesfile, to = file.path(path, '.gitattributes'),
            overwrite = TRUE)
  cli::cli_alert_success('.gitignore + .gitattributes updated')


  # for system commands and non-path functions, move to the new directory
  setwd(file.path(path))


  usethis::use_mit_license()


}
