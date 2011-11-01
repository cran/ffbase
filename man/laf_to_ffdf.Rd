\name{laf_to_ffdf}
\alias{laf_to_ffdf}
\title{Use LaF to import data into \code{ffdf} data.frame}
\usage{
  laf_to_ffdf(laf, x = NULL, ...)
}
\arguments{
  \item{laf}{laf object pointing to a csv or fwf file}

  \item{x}{optional, \code{\link{ffdf}} object where laf
  data should be appended to.}

  \item{...}{passed on to \code{next_block}}
}
\description{
  Use \code{LaF} to import data into a \code{\link{ffdf}}
  data.frame
}

