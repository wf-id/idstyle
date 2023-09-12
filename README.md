
<!-- README.md is generated from README.Rmd. Please edit that file -->

# idstyle

<!-- badges: start -->

[![R-CMD-check](https://github.com/wf-id/idstyle/workflows/R-CMD-check/badge.svg)](https://github.com/wf-id/idstyle/actions)
<!-- badges: end -->

The goal of idstyle is to …

## Installation

You can install the development version of idstyle like so:

``` r
remotes::install_github("wf-id/idstyle")
```

## Examples

### Tables

Flextable formatting:

- Black & white (default)

``` r
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(idstyle))
head(mtcars) |> format_flex_table() 
```

<div class="tabwid"><style>.cl-a111604e{}.cl-a0f0dd1a{font-family:'Arial';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a0f0dd6a{font-family:'Arial';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a0fbeebc{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a0fc25a8{width:0.509in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a0fc25b2{width:0.509in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a0fc25bc{width:0.509in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-a111604e'><thead><tr style="overflow-wrap:break-word;"><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">mpg</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">cyl</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">disp</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">hp</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">drat</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">wt</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">qsec</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">vs</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">am</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">gear</span></p></th><th class="cl-a0fc25a8"><p class="cl-a0fbeebc"><span class="cl-a0f0dd1a">carb</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">21.0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">6</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">160</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">110</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.9</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">2.6</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">16.5</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">21.0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">6</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">160</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">110</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.9</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">2.9</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">17.0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">22.8</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">108</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">93</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.8</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">2.3</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">18.6</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">21.4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">6</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">258</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">110</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.2</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">19.4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">18.7</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">8</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">360</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">175</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.1</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.4</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">17.0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3</span></p></td><td class="cl-a0fc25b2"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">18.1</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">6</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">225</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">105</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">2.8</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3.5</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">20.2</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">0</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">3</span></p></td><td class="cl-a0fc25bc"><p class="cl-a0fbeebc"><span class="cl-a0f0dd6a">1</span></p></td></tr></tbody></table></div>

- “wake” color

``` r
head(mtcars) |> format_flex_table(color = 'wake') 
```

<div class="tabwid"><style>.cl-a1abd5fc{}.cl-a18cc5d6{font-family:'Arial';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-a18cc5ea{font-family:'Arial';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-a1990e68{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-a19987f8{width:0.509in;background-color:rgba(140, 109, 44, 1.00);vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a199880c{width:0.509in;background-color:rgba(239, 239, 239, 1.00);vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-a199880d{width:0.509in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-a1abd5fc'><thead><tr style="overflow-wrap:break-word;"><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">mpg</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">cyl</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">disp</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">hp</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">drat</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">wt</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">qsec</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">vs</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">am</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">gear</span></p></th><th class="cl-a19987f8"><p class="cl-a1990e68"><span class="cl-a18cc5d6">carb</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">21.0</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">6</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">160</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">110</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.9</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">2.6</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">16.5</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">21.0</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">6</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">160</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">110</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.9</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">2.9</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">17.0</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">22.8</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">108</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">93</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.8</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">2.3</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">18.6</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">4</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">21.4</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">6</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">258</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">110</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.1</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.2</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">19.4</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">18.7</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">8</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">360</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">175</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.1</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.4</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">17.0</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3</span></p></td><td class="cl-a199880c"><p class="cl-a1990e68"><span class="cl-a18cc5ea">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">18.1</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">6</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">225</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">105</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">2.8</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3.5</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">20.2</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">0</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">3</span></p></td><td class="cl-a199880d"><p class="cl-a1990e68"><span class="cl-a18cc5ea">1</span></p></td></tr></tbody></table></div>

### Plots

- Points with black default

``` r
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point()
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

- Points with continuous default

``` r
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = gear))
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

- ID colorblind safe palette for factors

``` r
ggplot(mtcars) + geom_bar(aes(x = carb, fill = factor(carb)))
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

- ID colorblind safe palette for continuous fill

``` r
if (requireNamespace("sf", quietly = TRUE)) {
nc <- sf::st_read(system.file("shape/nc.shp", package = "sf"), quiet = TRUE)
ggplot(nc) +
  geom_sf(aes(fill = AREA))
}
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

- Label formatting

``` r
gg2 <- mtcars |> ggplot(aes(x = mpg, y = hp, color = cut(mtcars$hp,6))) + #discrete scale
  geom_point() + labs(title = 'This is a title for my graph',
                      subtitle = 'This is a subtitle for my graph',
                      caption = 'This is a caption for my graph',
                      color = 'HP')
gg2
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />

- Grids

``` r
gg2 + theme_wake(grid = 'both') +
  labs(title = 'Now with grids!')
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

- Facets

``` r
gg2 + facet_wrap(~gear) + theme_id_facet(grid = 'y') +
  labs(title = 'Some facets! And y grids only')
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

- Interactive

``` r

plotly::ggplotly(gg2)
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

- Theme Updating (ggplot2 default)

``` r

theme_set_gg()
ggplot(mtcars) + geom_bar(aes(x = carb, fill = factor(carb)))
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

- Theme Updating (Wake default)

``` r
theme_set_wake() 
ggplot(mtcars) + geom_bar(aes(x = carb, fill = factor(carb)))
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />

- Theme Updating (Atrium default)

``` r

theme_set_atrium()
ggplot(mtcars) + geom_bar(aes(x = carb, fill = factor(carb)))
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="100%" />

``` r

theme_set_id() # back to normal default
```

- Font Awesome

``` r

mtcars |> ggplot(aes(x = mpg, y = hp)) +
  geom_fontawesome('head-side-virus', size = 10) +
  labs(title = 'Using a font awesome icon')
```

<img src="man/figures/README-unnamed-chunk-15-1.png" width="100%" />

``` r


mtcars |> 
  mutate(myicon = if_else(am==0, 'robot','user')) |>
  ggplot(aes(x = mpg, y = hp, color = factor(gear), fill = factor(gear))) +
  geom_fontawesome(myicon, size = 10) +
  labs(title = 'Using font awesome icons in dataset') +
  guides(color = guide_legend(override.aes = aes(label = "■"))
         ) #otherwise "a" is in legend
```

<img src="man/figures/README-unnamed-chunk-15-2.png" width="100%" />

## Terms of Use

You should not rely on this Website for medical advice or guidance.

The Website relies upon publicly available data that do not always
agree. Authors hereby disclaims any and all representations and
warranties with respect to the Website, including accuracy, fitness for
use, reliability, completeness, and non-infringement of third party
rights.

These terms and conditions are subject to change. Your use of the
Website constitutes your acceptance of these terms and conditions and
any future modifications thereof.
