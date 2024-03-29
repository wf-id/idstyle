% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot.R
\name{theme_set_gg}
\alias{theme_set_gg}
\title{Reset ggplot2 theme to default}
\usage{
theme_set_gg(
  discrete.colour = NULL,
  discrete.fill = NULL,
  continuous.color = NULL,
  continuous.fill = NULL,
  geoms = TRUE
)
}
\arguments{
\item{discrete.colour}{default \code{NULL}, sets option ggplot2.discrete.colour}

\item{discrete.fill}{default \code{NULL}, sets option ggplot2.discrete.fill}

\item{continuous.color}{default \code{NULL}, sets option ggplot2.continuous.colour}

\item{continuous.fill}{default \code{NULL}, sets option ggplot2.continuous.fill}

\item{geoms}{default \code{TRUE} whether to also set the default ggplot geoms}
}
\description{
The default ggplot2 theme (\code{link[ggplot2]{theme_grey}()}) reset along
with color/fill scale options
}
