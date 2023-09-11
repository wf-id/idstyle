#' Wake Forest University Color Guide
#' @export

wake_cols <- c("#9E7E38", "#1E1E1E")

#' Wake Forest Secondary Colors
#' @export

wake_secondary <- c("#FED100",
                    "#EC7A08",
                    "#B6BF00",
                    "#CD202C",
                    "#0088CE",
                    "#CA005D",
                    "#58A618")

#' Wake Forest Atrium Full Color Guide
#' @export
#'
wake_all_colors <- list(
  primary = '#8C6D2C', #web gold
  gold = '#8C6D2C',
  primarydark = '#624d17',
  darkgold = '#624d17',

  black = '#000000',
  white = '#FFFFFF',
  oldgold = '#9E7E38', # old gold
  goldonblack = '#cc9f2e',
  #//primary = #a67f31, //old gold?

  ##secondary colors
  wakegray = '#54565A',
  wakeyellow = '#FDC314',

  ## accent colors
  wakegreen = '#6BA539',
  waketeal = '#008C95',
  wakelightgray = '#CFD2D3',
  wakecoolgray = '#A7A8A9',
  wakered = '#861F41',
  wakenavy = '#002B49',

  # bridge color
  yellowgreen = '#B0CC54',

  # atrium
  atriumteal = '#00818B',

  # atriumlightgray = '#f5f5f5',

  #atrium secondary bright
  atriumgreen = '#00BC70',
  atriumblue = '#004A98',
  atriumyellow = '#F0C300',
  atriumorange = '#FF7F31',
  atriumred = '#E5353C',

  #atrium secondary muted
  atriumtealshadow = '#007078',
  atriumtealhighlight = '#B2D9Dc',
  atriumlightgray = '#E6E7E8',
  atriumgray = '#BCBEC0',
  atriumdarkgray = '#929497'

  )



#' Wake Forest Gold
#' @export
#'
wake_gold <- wake_all_colors$gold

#' Wake Forest Old Gold
#' @export
#'
wake_oldgold <- wake_all_colors$oldgold

#' Wake Forest Dark Gold
#' @export
#'
wake_darkgold <- wake_all_colors$darkgold

#' Wake Forest Gray
#' @export
#'
wake_gray <- wake_all_colors$wakegray

#' Wake Forest Yellow
#' @export
#'
wake_yellow <- wake_all_colors$wakeyellow

#' Atrium Teal
#' @export
#'
atrium_teal <- wake_all_colors$atriumteal

#' Atrium Teal Highlight
#' @export
#'
atrium_tealhighlight <- wake_all_colors$atriumtealhighlight

#' Atrium Teal Shadow
#' @export
#'
atrium_tealshadow <- wake_all_colors$atriumtealshadow

#' Atrium Gray
#' @export
#'
atrium_gray <- wake_all_colors$atriumgray

#' Atrium Dark Gray
#' @export
#'
atrium_darkgray <- wake_all_colors$atriumdarkgray

#' Bridge Yellow-Green
#' @export
#'
bridge_yellowgreen <- wake_all_colors$yellowgreen




#' Wake-Atrium Bridge Continuous Scale
#' @description
#' Continuous gradient scales that bridges Wake gold & Atrium teal with yellow-green
#'
#' @param ... other arguments passed to \code{\link[ggplot2]{scale_color_gradientn}()}
#'
#' @export
#'
scale_continuous_wake_atrium <- function(...) {

  ggplot2::scale_color_gradientn(...,
                                 colours = c(wake_oldgold,
                                             bridge_yellowgreen,
                                             atrium_teal)
                                 )
}


#' Wake Continuous Scale Function
#' @description
#' Continuous gradient scales of black & Wake gold
#'
#' @param ... other arguments passed to \code{\link[ggplot2]{scale_color_gradientn}()}
#'
#' @export
#'
scale_continuous_wake <- function(...) {
  ggplot2::scale_color_gradientn(...,
                                 colours = c('black',
                                             wake_yellow)
                                 )
}

#' Wake Discrete Scale Function
#' @export
#'
scale_discrete_wake <- list(

  # gold, black, yellow for n <= 3

  c(wake_gold, 'black', wake_all_colors$wakeyellow),

  #diverging, gray instead of black (can't tell black from navy well) for n > 3, n <= 11

  c(wake_gold,
    wake_gray,
    wake_yellow,
    wake_all_colors$wakegreen,
    wake_all_colors$waketeal,
    wake_all_colors$wakered,
    wake_all_colors$wakenavy,
    wake_all_colors$wakecoolgray,
    # some extra from Okabe-Ito
    '#D55E00',
    '#CC79A7',
    # black for 11
    'black'
  )

)


#' Atrium Continuous Scale Function
#' @description
#' Continuous gradient scales of gray & Atrium teal
#'
#' @param ... other arguments passed to \code{\link[ggplot2]{scale_color_gradientn}()}
#'
#' @export
#'
scale_continuous_atrium <- function(...) {
  ggplot2::scale_color_gradientn(...,
                                 colours = c(atrium_gray,
                                             atrium_teal)
                                 )
}

#' Atrium Discrete Scale Function
#' @export
#'
scale_discrete_atrium <- list(

  c(atrium_teal, 'black', wake_all_colors$atriumdarkgray),

  #diverging, add highlight after teal, n > 3, n <= 11

  c(atrium_teal,
    atrium_tealhighlight,
    'black',
    atrium_darkgray,

    wake_all_colors$atriumgreen,
    wake_all_colors$atriumblue,
    wake_all_colors$atriumyellow,
    wake_all_colors$atriumorange,
    wake_all_colors$atriumred,
    # some extra from Okabe-Ito
    '#CC79A7',
    "#56B4E9"

  )

)
