#' Wake ID ggplot2 theme
#' @description
#' The default ggplot2 theme for Wake ID Research
#'
#' @param grid string, which gridlines to show (x, y, none, both) default 'none'
#' @param base_size default \code{11}
#' @param base_family default \code{idstyle::wake_google_fonts$sans_serif}
#' @param base_line_size default \code{base_size/22}
#' @param base_rect_size default \code{base_size/22}
#' @param ... other parameters passed to \code{\link[idstyle]{theme_wake_elements}} or
#'      \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_wake <- function(grid = 'none',
                       base_size = 11,
                     base_family = wake_google_fonts$sans_serif,
                     base_line_size = base_size/22,
                     base_rect_size = base_size/22,
                     ...){

  fix_grid(
  ggplot2::theme_minimal(base_size = base_size,
                         base_family = base_family,
                         base_line_size = base_line_size,
                         base_rect_size = base_rect_size),
  grid = grid) +
    theme_wake_elements(...)

}

#' Fix ggplot gridlines
#' @description
#' Specify which gridlines to show in ggplot
#'
#' @param gg a ggplot
#' @param grid string, which gridlines to show (x, y, none, both) default 'both'
#' @param facet logical, default \code{FALSE} will add axis lines & ticks when grids are dropped (not need for theme_xxx_facet where full panel.border & axis ticks are already present)
#'
#' @export
#'
fix_grid <- function(gg, grid = c('none', 'x', 'y', 'both'),
                     facet = FALSE){

  stopifnot(is.logical(facet))

  grid <- match.arg(grid)

  addaxisline <- grid != 'both'
  if(facet) addaxisline <- FALSE
  dropx <- grid %in% c('y', 'none')
  dropy <- grid %in% c('x', 'none')

  if(dropx) {
    gg <- gg + ggplot2::theme(panel.grid.major.x = ggplot2::element_blank(),
                             panel.grid.minor.x = ggplot2::element_blank())

    if(!facet) gg <- gg + ggplot2::theme(
                             axis.ticks.x = ggplot2::element_line(color = "grey20",
                                                         linewidth = ggplot2::rel(0.5))
                             )

  }
  if(dropy) {

    gg <- gg + ggplot2::theme(panel.grid.major.y = ggplot2::element_blank(),
                             panel.grid.minor.y = ggplot2::element_blank())

    if(!facet) gg <- gg + ggplot2::theme(
                             axis.ticks.y = ggplot2::element_line(color = "grey20",
                                                         linewidth = ggplot2::rel(0.5))
                             )
  }

  if(addaxisline) {
    gg <- gg + ggplot2::theme(axis.line = ggplot2::element_line(color = "grey20",
                                                       linewidth = ggplot2::rel(0.5),
                                                       lineend = "square"))
  }

  gg
}

#' Wake ID ggplot2 theme for faceted plots
#' @description
#' The ggplot2 theme for Wake ID Research for faceted plots
#'
#' @param grid string, which gridlines to show (x, y, none, both) default 'none'
#' @param base_size default \code{11}
#' @param base_family default \code{idstyle::wake_google_fonts$sans_serif}
#' @param base_line_size default \code{base_size/22}
#' @param base_rect_size default \code{base_size/22}
#' @param ... other theme options passed to \code{\link[idstyle]{theme_wake_elements}} or
#'      \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_wake_facet <- function(grid = 'none',
                             base_size = 11,
                           base_family = wake_google_fonts$sans_serif,
                           base_line_size = base_size/22,
                           base_rect_size = base_size/22, ...){

  fix_grid(
  ggplot2::theme_bw(base_size = base_size,
                    base_family = base_family,
                    base_line_size = base_line_size,
                    base_rect_size = base_rect_size),
  grid = grid, facet = TRUE) +
    theme_wake_elements(...)

}


#' Atrium ID ggplot2 theme
#' @description
#' The default ggplot2 theme for Atrium ID Research
#'
#' @param grid string, which gridlines to show (x, y, none, both) default 'none'
#' @param base_size default \code{11}
#' @param base_family default \code{idstyle::wake_system_fonts$sans_serif}
#' @param base_line_size default \code{base_size/22}
#' @param base_rect_size default \code{base_size/22}
#' @param ... other parameters passed to \code{\link[idstyle]{theme_atrium_elements}} or
#'      \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_atrium <- function(grid = 'none',
                       base_size = 11,
                       base_family = wake_system_fonts$sans_serif,
                       base_line_size = base_size/22,
                       base_rect_size = base_size/22,
                       ...){

  fix_grid(
    ggplot2::theme_minimal(base_size = base_size,
                           base_family = base_family,
                           base_line_size = base_line_size,
                           base_rect_size = base_rect_size),
    grid = grid) +
    theme_atrium_elements(...)

}


#' Atrium ID ggplot2 theme for faceted plots
#' @description
#' The ggplot2 theme for Atrium ID Research for faceted plots
#'
#' @param grid string, which gridlines to show (x, y, none, both) default 'none'
#' @param base_size default \code{11}
#' @param base_family default \code{idstyle::wake_google_fonts$sans_serif}
#' @param base_line_size default \code{base_size/22}
#' @param base_rect_size default \code{base_size/22}
#' @param ... other theme options passed to \code{\link[idstyle]{theme_atrium_elements}} or
#'      \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_atrium_facet <- function(grid = 'none',
                             base_size = 11,
                             base_family = wake_system_fonts$sans_serif,
                             base_line_size = base_size/22,
                             base_rect_size = base_size/22, ...){

  fix_grid(
    ggplot2::theme_bw(base_size = base_size,
                      base_family = base_family,
                      base_line_size = base_line_size,
                      base_rect_size = base_rect_size),
    grid = grid, facet = TRUE) +
    theme_atrium_elements(...)

}


#' Wake ID ggplot2 theme elements
#' @description
#' The ggplot2 theme element for wake. Returns \code{link[ggplot2]{theme}()} with lots of defaults for Wake ID Research
#'
#' @param title_size default \code{18}
#' @param title_color default \code{idstyle::wake_gold}
#' @param title_family default \code{idstyle::wake_google_fonts$serif}
#' @param title_face default 'bold'
#' @param subtitle_size default \code{16}
#' @param subtitle_color default \code{idstyle::wake_gray}
#' @param subtitle_family default \code{title_family}
#' @param subtitle_face default 'bold'
#' @param caption_size default \code{9}
#' @param caption_color default \code{idstyle::wake_gray}
#' @param caption_family default \code{title_family}
#' @param caption_face default 'bold'
#' @param legend_title_size default \code{11}
#' @param legend_title_color default \code{idstyle::wake_gray}
#' @param legend_title_face default 'bold'
#' @param axis_title_size default \code{13}
#' @param axis_title_color default \code{idstyle::wake_gray}
#' @param axis_title_face default 'bold'
#' @param legend_size default \code{10}
#' @param strip_fill default 'black'
#' @param strip_color default 'white'
#' @param strip_size default \code{13}
#' @param strip_face default 'bold'
#'
#' @param ... other parameters passed to \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_wake_elements <- function(title_size = 18, title_color = wake_gold,
                              title_family = wake_google_fonts$sans_serif,
                              title_face = 'plain',

                              subtitle_size = 16, subtitle_color = wake_gray,
                              subtitle_family = wake_google_fonts$serif,
                              subtitle_face = 'bold',

                              caption_size = 9, caption_color = wake_gray,
                              caption_family = wake_google_fonts$serif,
                              caption_face = 'bold',

                              legend_title_size = 11,
                              legend_title_color = wake_gray,
                              legend_title_face ='bold',

                              axis_title_size = 12,
                              axis_title_color = wake_gray,
                              axis_title_face ='bold',

                              legend_size = 10,

                              strip_fill = 'black',
                              strip_color = 'white',
                              strip_size = 13,
                              strip_face = 'bold',
                              ...){



ggplot2::theme(plot.title = ggplot2::element_text(colour = title_color,
                                                         face = title_face,
                                                         size = title_size, vjust = 0,
                                                         family = title_family),
                      plot.subtitle = ggplot2::element_text(colour = subtitle_color,
                                                            face = subtitle_face,
                                                            size = subtitle_size, vjust = 1,
                                                            family = subtitle_family),
                      plot.caption = ggplot2::element_text(family = caption_family,
                                                           colour = caption_color,
                                                           face = caption_face,
                                                           size = caption_size),

                      legend.title = ggplot2::element_text(colour = legend_title_color,
                                                           size = legend_title_size,
                                                           face = legend_title_face),

                      legend.text = ggplot2::element_text(size = legend_size),

                      axis.title = ggplot2::element_text(colour = axis_title_color,
                                                         face = axis_title_face,
                                                         size = axis_title_size),

                      strip.text = ggplot2::element_text(colour = strip_color,
                                                         size = strip_size,
                                                         face = strip_face),

                      strip.background = ggplot2::element_rect(fill = strip_fill),
                      ...
)

}


#' Atrium ID ggplot2 theme elements
#' @description
#' The ggplot2 theme element for Atrium. Returns \code{link[ggplot2]{theme}()} with lots of defaults for Atrium ID Research
#'
#' @param title_color default \code{idstyle::atrium_teal}
#' @param title_family default \code{idstyle::wake_system_fonts$sans_serif}
#' @param title_face default 'bold'
#' @param subtitle_family default \code{idstyle::wake_system_fonts$sans_serif}
#' @param subtitle_face default 'plain'
#' @param caption_family default \code{idstyle::wake_system_fonts$sans_serif}
#' @param caption_face default 'plain'
#' @param subtitle_color default \code{idstyle::atrium_darkgray}
#' @param caption_color default 'black'
#' @param legend_title_color default 'black'
#' @param legend_title_face default 'plain'
#' @param axis_title_color default 'black'
#' @param axis_title_face default 'plain'
#' @param strip_fill default \code{idstyle::atrium_teal}
#' @param ... other parameters passed to
#'      \code{\link[idstyle]{theme_wake_elements}()} or
#'      \code{\link[ggplot2]{theme}()}
#'
#' @export
#'
theme_atrium_elements <- function(title_color = atrium_teal,
                                  title_family = wake_system_fonts$sans_serif,
                                  title_face = 'bold',
                                  subtitle_family = wake_system_fonts$sans_serif,
                                  subtitle_face = 'plain',
                                  caption_family = wake_system_fonts$sans_serif,
                                  caption_face = 'plain',

                                  subtitle_color = atrium_darkgray,
                                  caption_color = 'black',

                                  legend_title_color = 'black',
                                  legend_title_face = 'plain',
                                  axis_title_color = 'black',
                                  axis_title_face = 'plain',

                                  strip_fill = atrium_teal,

                                  ...){
  theme_wake_elements(title_color = title_color,
                      title_family = title_family,
                      title_face = title_face,
                      subtitle_family = subtitle_family,
                      subtitle_face = subtitle_face,
                      caption_family = caption_family,
                      caption_face = caption_face,
                      subtitle_color = subtitle_color,
                      caption_color = caption_color,
                      legend_title_color = legend_title_color,
                      legend_title_face = legend_title_face,
                      axis_title_color = axis_title_color,
                      axis_title_face = axis_title_face,
                      strip_fill = strip_fill,
                      ...
                      )

}

#' Reset palettes to ggplot2 defaults
#' @description
#' The default ggplot2 color/fill scale options
#'
#' @param discrete.colour default \code{NULL}, sets option ggplot2.discrete.colour
#' @param discrete.fill default \code{NULL}, sets option ggplot2.discrete.fill
#' @param continuous.color default \code{NULL}, sets option ggplot2.continuous.colour
#' @param continuous.fill default \code{NULL}, sets option ggplot2.continuous.fill
#'
#' @export
#'
palette_set_gg <- function(discrete.colour = NULL,
                         discrete.fill = NULL,
                         continuous.color = NULL,
                         continuous.fill = NULL){

  options(ggplot2.discrete.colour = discrete.colour)
  options(ggplot2.discrete.fill = discrete.fill)

  options(ggplot2.continuous.colour = continuous.color)
  options(ggplot2.continuous.fill = continuous.fill)

}


#' Set ggplot2 palettes to Wake defaults
#' @description
#' The default ggplot2 color/fill scale options for Wake ID.
#'
#' @param discrete.colour default \code{\link[idstyle]{scale_discrete_wake}}, sets option ggplot2.discrete.colour
#' @param discrete.fill default \code{\link[idstyle]{scale_discrete_wake}}, sets option ggplot2.discrete.fill
#' @param continuous.color default \code{\link[idstyle]{scale_continuous_wake}}, sets option ggplot2.continuous.colour
#' @param continuous.fill default \code{\link[idstyle]{scale_continuous_wake}}, sets option ggplot2.continuous.fill
#'
#' @export
#'
palette_set_wake <- function(discrete.colour = scale_discrete_wake,
                             discrete.fill = scale_discrete_wake,
                             continuous.color = scale_continuous_wake,
                             continuous.fill = scale_continuous_wake){


  palette_set_gg(discrete.colour = discrete.colour,
                 discrete.fill = discrete.fill,
                 continuous.color = continuous.color,
                 continuous.fill = continuous.fill)
}


#' Set ggplot2 palettes to Atrium defaults
#' @description
#' The default ggplot2 color/fill scale options for Atrium ID.
#'
#' @param discrete.colour default \code{\link[idstyle]{scale_discrete_atrium}}, sets option ggplot2.discrete.colour
#' @param discrete.fill default \code{\link[idstyle]{scale_discrete_atrium}}, sets option ggplot2.discrete.fill
#' @param continuous.color default \code{\link[idstyle]{scale_continuous_atrium}}, sets option ggplot2.continuous.colour
#' @param continuous.fill default \code{\link[idstyle]{scale_continuous_atrium}}, sets option ggplot2.continuous.fill
#'
#' @export
#'
palette_set_atrium <- function(discrete.colour = scale_discrete_atrium,
                             discrete.fill = scale_discrete_atrium,
                             continuous.color = scale_continuous_atrium,
                             continuous.fill = scale_continuous_atrium){


  palette_set_gg(discrete.colour = discrete.colour,
                 discrete.fill = discrete.fill,
                 continuous.color = continuous.color,
                 continuous.fill = continuous.fill)
}


#' Reset ggplot2 theme to default
#' @description
#' The default ggplot2 theme (\code{link[ggplot2]{theme_grey}()}) reset along
#'      with color/fill scale options
#'
#' @param discrete.colour default \code{NULL}, sets option ggplot2.discrete.colour
#' @param discrete.fill default \code{NULL}, sets option ggplot2.discrete.fill
#' @param continuous.color default \code{NULL}, sets option ggplot2.continuous.colour
#' @param continuous.fill default \code{NULL}, sets option ggplot2.continuous.fill
#' @param geoms default \code{TRUE} whether to also set the default ggplot geoms
#'
#' @export
#'
theme_set_gg <- function(discrete.colour = NULL,
                         discrete.fill = NULL,
                         continuous.color = NULL,
                         continuous.fill = NULL,
                         geoms = TRUE){

  stopifnot(is.logical(geoms))

  ggplot2::theme_set(ggplot2::theme_gray())

  palette_set_gg(discrete.colour = discrete.colour,
                 discrete.fill = discrete.fill,
                 continuous.color = continuous.color,
                 continuous.fill = continuous.fill)

  if(geoms) update_geoms_gg()

}


#' Set Wake theme & palette for ggplot2
#' @description
#' The default ggplot2 theme (\code{link[idstyle]{theme_wake}()}) set along
#'      with default color/fill scale options, \code{link[idstyle]{palette_set_wake}()}
#'
#' @export
#'
theme_set_wake <- function(){

  ggplot2::theme_set(theme_wake())

  palette_set_wake()

  update_geoms_wake()

}


#' Set Atrium theme & palette for ggplot2
#' @description
#' The default ggplot2 theme (\code{link[idstyle]{theme_atrium}()}) set along
#'      with default color/fill scale options, \code{link[idstyle]{palette_set_atrium}()}
#'
#' @export
#'
theme_set_atrium <- function(){

  ggplot2::theme_set(theme_atrium())

  palette_set_atrium()

  update_geoms_atrium()

}


#' Update ggplot2 geom defaults
#' @description
#' Update ggplot2 geom defaults; the default here are ggplot defaults
#'
#' @param line_color default 'black'
#' @param point_color default 'black'
#' @param point_size default \code{1.5}
#'
#' @export
#'
update_geoms_gg <- function(line_color = 'black',
                            point_color = 'black',
                            point_size = 1.5){
  ggplot2::update_geom_defaults('line', list(color = line_color))
  ggplot2::update_geom_defaults('point', list(color = point_color,
                                     size = point_size))
}


#' Wake ID ggplot2 geom defaults
#' @description
#' Update ggplot2 geoms defauls to Wake ID defaults
#'
#'
#' @export
#'
update_geoms_wake <- function(){

  update_geoms_gg(line_color = wake_gold,
                  point_color = wake_gold,
                  point_size = 2)

}


#' Atrium ID ggplot2 geom defaults
#' @description
#' Update ggplot2 geoms defauls to Atrium ID defaults
#'
#'
#' @export
#'
update_geoms_atrium <- function(){

  update_geoms_gg(line_color = atrium_teal,
                  point_color = atrium_teal,
                  point_size = 2)

}
