# Changes in version 0.0.7

 - Color updates to de-emphasize wake_gold (prioritizing black)
 - Changing id default discrete color scales to brighter colors from wake secondary palette
 - css updates for Quarto dashboard support
 - `idreport` extension is now simply the `id` extension and includes a Quarto dashboard output with template
   - Note: since extension is installed in each project, there should be no back compatibility issues
 

# Changes in version 0.0.6

## New Features

New default ggplot palette that is colorblind friendly. `theme_set_id()` instead of `theme_set_wake()` now sets the defaults:

 - sets `theme_id()` as default theme (use `theme_id_facet()` for facet plots)
 - sets the default palettes (`scale_discrete_id()`, `scale_color_continuous_id()` and `scale_fill_continuous_id()`) via `palette_set_id()`
 - sets default geoms with `update_geoms_id()` 
 
## Bug fix

Bug fix on `scale_continuous_xxx()` palettes... broken into `scale_color_continuous_xxx()` and `scale_fill_continuous_xxx()` for color and fill respectively (only color properly supported before).

# Changes in version 0.0.5

`format_flex_table()` changes
 
 - smaller, non-bold footer text
 - white footer text in colored tables for readability 
 - `gtsummary` support

# Changes in version 0.0.4

## ggplot2 stuff

A lot of update for ggplot2 themes, palettes, and geom defaults.

### Set defaults
 - `set_theme_wake()` (the package default, ran at package load)
 - `set_theme_atrium()`
 - `set_theme_gg()` for ggplot2 typical defaults

### ggplot2 themes
 - `theme_wake()` & `theme_wake_facet()`
 - `theme_atrium()` & `theme_atrium_facet()`
 - `theme_gg()`
 
### ggplot2 scales (and how to set them)
 - `scale_distrete_wake()` & `scale_continuous_wake()`
 - `scale_distrete_atrium()` & `scale_continuous_atrium()`
 - `scale_distrete_wake_atrium()` & `scale_continuous_wake_atrium()`
 - `palette_set_wake()`
 - `palette_set_atrium()`
 - `palette_set_gg()`
 
## More colors

Atrium colors added to `wake_all_colors` and some shorthand:

 - `atrium_gray`
 - `atrium_darkgray`
 - `atrium_tealhighlight`
 - `atrium_tealshadow`
 - `bridge_yellowgreen`

## fontawesome

 - fonts added to `/inst`
 - function to register for use: `register_font_awesome()`
 - `geom_fontawesome()` for ggplot2 use

 
## `useWakeCss()` function

Moved from idgeo since css can be applied to any htmlwidget (and not just maps).


# Changes in version 0.0.3

package data added: `logoTextHTML` and `logoTextMD`, character strings containing the IDEAS logo in HTML & MD formats for use outside of just the addins

# Changes in version 0.0.2

## New Features

1. Short hand text available for common colors/fonts: 

  - colors
    - `wake_gold`
    - `wake_darkgold`
    - `wake_oldgold`
    - `wake_gray`
    - `wake_yellow`
    - `atrium_teal`
  - fonts
    - `wake_serif`
    - `wake_sanserif`
    
2. Easier css access with `get_css_location()`: formally the css was buried in the quarto idreport extension, and only as non-compiled `.scss`. This file is now compiled and saved to `inst/assets/main.css` and the new function will return the file system location.

## Clean up

1. removed unnecessary importFrom for packages that are already imported
2. removed template output files from testing
3. removed magrittr pipe
4. updates to main `.scss` after additional website testing

# Changes in version 0.0.1.0009

Lots of updates in this dev version for review:

## Templates available in `inst` folder

- git
  - .gitattributes & .gitignore
- quarto
  - idreport template using quarto extensions for html, pdf, and docx outputs
- rmarkdown
  - updated the docx rmd output to use a template docx files
- r packages
  - NEWS & README templates
- rstudio
  - project templates for r packages & analysis projects
  - addins for logo text
- shiny
  - templates for shiny application (global, ui, server), function to run application, and README
  
## Functions & Data in `R` folder

- colors & fonts
- bootstrap theme
- other functions/data to support templates described above accessed through R Studio wizard and add-ins.


# idstyle 0.0.1

* Initial creation
