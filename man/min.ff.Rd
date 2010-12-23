\name{min.ff}
\alias{min.ff}
\title{Minimum, maximum and range of ff vector...}
\usage{\method{min}{ff}(x, ..., na.rm=FALSE, range)
}
\description{Minimum, maximum and range of ff vector}
\details{default behaviour of \code{\link{min}},\code{\link{max}} and \code{\link{range}}}
\alias{min}
\alias{max}
\alias{range}
\alias{min.ff}
\alias{max.ff}
\alias{range.ff}
\value{minimun, maximum or range values}
\arguments{\item{x}{a \code{ff} object}
\item{...}{optional other (\code{ff}) objects}
\item{na.rm}{should \code{NA} be removed?}
\item{range}{a \code{ri} or an \code{integer} vector of \code{length==2} giving a range restriction for chunked processing}
}
\examples{x <- ff(1:100)

min(x)
max(x)
range(x)

is.na(x) <- 10
min(x)
max(x)
range(x)


min(x, na.rm=TRUE)
max(x, na.rm=TRUE)
range(x, na.rm=TRUE)}

