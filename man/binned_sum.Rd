\name{binned_sum}
\alias{binned_sum}
\alias{binned_sum.ff}
\title{Fast summing in different bins}
\usage{
  binned_sum(x, bin, nbins = max(bin))

  \method{binned_sum}{ff} (x, bin, nbins = max(bin), ...)
}
\arguments{
  \item{x}{\code{numeric} vector with the data to be
  summed}

  \item{bin}{\code{integer} vector with the bin number for
  each data point}

  \item{nbins}{\code{integer} maximum bin number}

  \item{...}{passed on to chunk}
}
\value{
  \code{numeric} matrix where each row is a bin
}
\description{
  \code{binned_sum} implements fast summing for given bins
  by calling c-code.
}

