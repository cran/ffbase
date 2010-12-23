\name{chunkify}
\alias{chunkify}
\title{Chunkify an element-wise function...}
\usage{chunkify(fun)
}
\description{Chunkify an element-wise function}
\details{Chunkify creates a new function that operates on a ff vector. 
It creates chunks from the ff vector and calls the orginal function \code{fun} on each chunk.}
\arguments{\item{fun}{function to be 'chunkified', the function must accept a vector and 
return a vector of the same \code{length}}
}

