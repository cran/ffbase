\name{binned_sumsq}
\alias{binned_sumsq}
\alias{binned_sumsq.ff}
\title{Fast summing in different bins}
\usage{
  binned_sumsq(x, mean = rep(0, nbins), bin,
    nbins = max(bin))

  \method{binned_sumsq}{ff} (x, bin, nbins=max(bin), ...)
}
\arguments{
  \item{x}{\code{numeric} vector with the data to be summed
  squared}

  \item{mean}{\code{numeric} vector with an optional mean
  to be subtracted from the data to be summed and squared}

  \item{bin}{\code{integer} vector with the bin number for
  each observation}

  \item{nbins}{\code{integer} maximum bin number}

  \item{...}{passed on to chunk}
}
\value{
  \code{numeric} matrix where each row is a bin
}
\description{
  \code{binned_sum} implements fast squared summing for
  given bins by calling c-code, which can be used to
  calculate variance and standard deviation Please note
  that incorrect use of this function may crash your
  R-session. the values of \code{bins} must be in between
  1:\code{nbins} and \code{bin} may not contain \code{NA}
}

