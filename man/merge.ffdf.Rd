\name{merge.ffdf}
\alias{merge.ffdf}
\title{Merge two ffdf by common columns, or do other versions of database join operations.}
\usage{
  \method{merge}{ffdf} (x, y,
    by = intersect(names(x), names(y)), by.x = by,
    by.y = by, all = FALSE, all.x = all, all.y = all,
    suffixes = c(".x", ".y"), incomparables = NULL,
    speedup = FALSE,
    BATCHBYTES.x = getOption("ffbatchbytes"),
    BATCHBYTES.y = getOption("ffbatchbytes"),
    RECORDBYTES.x = sum(.rambytes[vmode(x)]),
    RECORDBYTES.y = sum(.rambytes[vmode(y)]), trace = TRUE,
    ...)
}
\arguments{
  \item{x}{an ffdf}

  \item{y}{an ffdf}

  \item{by}{specifications of the common columns. Columns
  can be specified by name, number or by a logical vector.}

  \item{by.x}{specifications of the common columns of the x
  ffdf, overruling the by parameter}

  \item{by.y}{specifications of the common columns of the y
  ffdf, overruling the by parameter}

  \item{all}{see \code{\link{merge}} in R base}

  \item{all.x}{logical passed on to \code{merge}; if TRUE,
  then extra rows will be added to the output, one for each
  row in x that has no matching row in y. These rows will
  have NAs in those columns that are usually filled with
  values from y. The default is FALSE, so that only rows
  with data from both x and y are included in the output.}

  \item{all.y}{similar as all.x}

  \item{suffixes}{character(2) specifying the suffixes to
  be used for making non-by names() unique.}

  \item{incomparables}{values which cannot be matched. See
  \code{match}.}

  \item{speedup}{logical indicating to use a speedup
  compared to the regular merge which handles inner and
  left outer joins. This is done by making a key based on
  the by.x and by.y columns and matching on the key}

  \item{BATCHBYTES.x}{integer scalar limiting the number of
  bytes to be processed in one chunk processing the x ffdf}

  \item{BATCHBYTES.y}{integer scalar limiting the number of
  bytes to be processed in one chunk processing the y ffdf}

  \item{RECORDBYTES.x}{optional integer scalar representing
  the bytes needed to process one row of x}

  \item{RECORDBYTES.y}{optional integer scalar representing
  the bytes needed to process one row of y}

  \item{trace}{logical indicating to show on which chunk
  the function is computing}

  \item{...}{other parameters passed on to chunk}
}
\value{
  an ffdf
}
\description{
  Merge two ffdf by common columns, or do other versions of
  database join operations. \cr This method is similar as
  \code{merge} in the base package with a possible speedup
  for inner and left outer joins.
}
\examples{
authors <- data.frame(
    surname = c("Tukey", "Venables", "Tierney", "Ripley", "McNeil"),
    nationality = c("US", "Australia", "US", "UK", "Australia"),
    deceased = c("yes", rep("no", 4)))
books <- data.frame(
    name = c("Tukey", "Venables", "Tierney",
             "Ripley", "Ripley", "McNeil", "R Core"),
    title = c("Exploratory Data Analysis",
              "Modern Applied Statistics ...",
              "LISP-STAT",
              "Spatial Statistics", "Stochastic Simulation",
              "Interactive Data Analysis",
              "An Introduction to R"),
    other.author = c(NA, "Ripley", NA, NA, NA, NA,
                     "Venables & Smith"))
books <- lapply(1:2000, FUN=function(x, books){
	books$price <- rnorm(nrow(books))
	books
}, books=books)
books <- do.call(rbind, books)
authors <- as.ffdf(authors)                
books <- as.ffdf(books)

dim(books)
dim(authors)
## Left outer join
m1 <- merge(books, authors, by.x = "name", by.y = "surname", all.x=TRUE, all.y=FALSE, BATCHBYTES.x = 20000, BATCHBYTES.y = 20000, trace = TRUE)                     
class(m1)
dim(m1)
names(books)
names(m1)
## Inner join
m1 <- merge(books, authors, by.x = "name", by.y = "surname", all.x=FALSE, all.y=FALSE, BATCHBYTES.x = 20000, BATCHBYTES.y = 20000, trace = TRUE)                     
dim(m1)
## Speedup for inner and left outer join
m1 <- merge(books, authors, by.x = "name", by.y = "surname", all.x=FALSE, all.y=FALSE, speedup=TRUE, BATCHBYTES.x = 20000, BATCHBYTES.y = 20000, trace = FALSE)
dim(m1)
m1 <- merge(books, authors, by.x = "name", by.y = "surname", all.x=TRUE, all.y=FALSE, speedup=TRUE, BATCHBYTES.x = 20000, BATCHBYTES.y = 20000, trace = FALSE)
dim(m1)



}
\seealso{
  \code{\link{merge}}
}

