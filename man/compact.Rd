\name{compact}
\alias{compact}
\title{Compact a ff vector or ffdf data frame...}
\usage{\method{compact}{ff}(x, use.na=TRUE, ...)
}
\description{Compact a ff vector or ffdf data frame}
\details{Compact takes a ff vector and tries to use the smallest binary data type for this vector.}
\alias{compact}
\alias{compact.ff}
\alias{compact.ffdf}
\value{compact ff vector}
\arguments{\item{x}{\code{ff} or \code{ffdf} object}
\item{use.na}{\code{logical} if TRUE the resulting ff vector can contain NA, otherwise not}
\item{...}{other parameters}
}

