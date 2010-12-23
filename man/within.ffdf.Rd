\name{within.ffdf}
\alias{within.ffdf}
\title{Evaluate an expression in a ffdf data environment...}
\usage{\method{within}{ffdf}(data, expr, ...)
}
\description{Evaluate an expression in a ffdf data environment}
\details{Same functionality as \code{\link{within}}. Please note that you should write
your expression as if it is a normal \code{data.frame}. The resulting data.frame
however will be a \code{ffdf} data.frame.}
\value{a modified clone of \code{data}.}
\arguments{\item{data}{\code{\link{ffdf}} data object used as an environment for evaluation.}
\item{expr}{expression to evaluate.}
\item{...}{arguments to be passed to future methods.}
}
\examples{ffdat <- as.ffdf(data.frame(x=1:10, y=10:1))
# add z to the ffdat
within(ffdat, {z <- x+y})}

