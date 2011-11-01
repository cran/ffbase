\name{ffseq_len}
\alias{ffseq_len}
\title{Sequence Generation of \code{ff} vectors.}
\usage{
  ffseq_len(length.out)
}
\arguments{
  \item{length.out}{desired length of the sequence. Only
  non-negative numbers larger than 0 are allowed.}
}
\value{
  An ff vector of integers with range from 1 to length.out
}
\description{
  Similar as \code{seq_len} in the base package generates
  an \code{ff} vector.
}
\examples{
ffseq_len(1000)
ffseq_len(1000000)

}
\seealso{
  \code{\link[base]{seq_len}}
}

