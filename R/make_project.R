#' Make an Analysis Project
#'
#' @description This function makes an R project for ID research with standard
#' folder structure and varying output options.
#'
#' @param path Path automatically set by id_project.dcf (see
#'    \code{./rstudio/templates/project/})
#' @param report default: `TRUE`, whether to include a `.qmd` report for a html, pdf, or docx report
#' @param website default: `FALSE`, whether to create a quarto website
#' @param book default: `FALSE`, whether to create a quarto book
#'
#' @details Behind the scenes, this function used by id_project.dcf when
#' a user selects New project... > New Directory > ID Research Project Template
#' within the RStudio IDE. See \code{./rstudio/templates/project/}.
#'
#' @return Returns nothing.  See description above.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   make_project(path = "~/test_project")
#' }
#' \dontrun{
#'   make_project(path = "~/test_project", website = TRUE))
#' }

make_project <- function(
    path = here::here(),
    report = TRUE,
    website = FALSE,
    book = FALSE
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


    #for non-packages
    unlink(file.path(path, 'R'), recursive = TRUE)


    # default folder structure
    dir.create(file.path(path,'data'), recursive = TRUE, showWarnings = FALSE)
    dir.create(file.path(path,'data-raw'), recursive = TRUE, showWarnings = FALSE)
    dir.create(file.path(path,'munge'), recursive = TRUE, showWarnings = FALSE)
    dir.create(file.path(path,'output'), recursive = TRUE, showWarnings = FALSE)
    dir.create(file.path(path,'src'), recursive = TRUE, showWarnings = FALSE)
    cli::cli_alert_success('default folder structure created for analysis')

    readme_glue <- system.file('quarto', 'README-template.qmd',
                               package = 'idstyle')
    readme_glue <- idtools::generate_template(readme_glue,
                                              glue_open = '{{',
                                              glue_close = '}}')
    writeLines(readme_glue, con = file.path(path, 'README.qmd'))
    cli::cli_alert_success('README.qmd added')

    build_template <- c('\n# Build Script\n# This script can be ran to create all outputs')

    if (report) {
      dir.create(file.path(path,'report'), recursive = TRUE, showWarnings = FALSE)
      report_file <- system.file('quarto', 'idreport', 'template.qmd',
                                 package = 'idstyle')
      quartoext_path <- system.file('quarto', 'idreport', '_extensions',
                                    package = 'idstyle')
      file.copy(report_file, file.path(path, "report", "report.qmd"),
                overwrite = FALSE)
      cli::cli_alert_success('report.qmd created')

      report_build_glue <- system.file('quarto', 'build-template-report.R',
                                       package = 'idstyle')

      build_template <- paste0(build_template,'\n\n\n',
                               idtools::generate_template(report_build_glue,
                                                          glue_open = '{{',
                                                          glue_close = '}}')
                               )

    }



  gitignorefile <- system.file('git', '.gitignore', package = 'idstyle')
  gitattributesfile <- system.file('git', '.gitattributes', package = 'idstyle')
  file.copy(gitignorefile, to = file.path(path, '.gitignore'),
            overwrite = TRUE)
  file.copy(gitattributesfile, to = file.path(path, '.gitattributes'),
            overwrite = TRUE)
  cli::cli_alert_success('.gitignore + .gitattributes updated')


  # setup quarto extensions, book/website


  # for system commands and non-path functions, move to the new directory
  setwd(file.path(path))


  #quarto website/book
  if(website){
    res <- system2('quarto', paste0('create project website website'))
    #TODO: overwrite _quarto.yml, add styles

    website_build_glue <- system.file('quarto', 'build-template-website.R',
                                     package = 'idstyle')

    build_template <- paste0(build_template,'\n\n\n',
                             idtools::generate_template(website_build_glue,
                                                        glue_open = '{{',
                                                        glue_close = '}}'
                                                        )
    )

    if(length(attr(res, 'status'))==0){
      cli::cli_alert_success('website created')
    } else cli::cli_alert_danger('website not created')
  }

  if(book){
    res <- system2('quarto', paste0('create project book book'))
    #TODO: overwrite _quarto.yml, add styles

    book_build_glue <- system.file('quarto', 'build-template-book.R',
                                      package = 'idstyle')

    build_template <- paste0(build_template,'\n\n\n',
                             idtools::generate_template(book_build_glue,
                                                        glue_open = '{{',
                                                        glue_close = '}}')
    )

    if(length(attr(res, 'status'))==0){
      cli::cli_alert_success('book created')
    } else cli::cli_alert_danger('book not created')
  }


    # build script is complete now
    writeLines(build_template, con = 'build.R')
    cli::cli_alert_success('build script created')


  #quarto extensions for idreport
  if(report){
    setwd(file.path('report'))

    res <- system2('quarto', paste0('add "',
                                    normalizePath(file.path(system.file('quarto', 'idreport',
                                                          package = 'idstyle'))),
                                    '" --no-prompt'))

    if(length(attr(res, 'status'))==0){
      cli::cli_alert_success('quarto report extensions added')
    } else cli::cli_alert_danger('quarto report extensions not added')
  }


}
