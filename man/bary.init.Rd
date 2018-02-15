\name{bary.init}
\alias{bary.init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Create barycentric plot }
\description{
  This function creates a new plot in the default graphics device, sets up the coordinate system, and draws the axes of a new barycentric plot.
}
\usage{
bary.init(l = 1, col = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{l}{ Optional line type for the axes. Values as those for \code{lty} as described in \code{par}. }
  \item{col}{ Optional color for axes }
}
\details{
  The coordinate system is defined on the interval 0 to 1, for both x and y. The aspect ratio is set to 1:1, keeping the triangle equilateral, in the event the graphics device is resized.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.labels}} }
\examples{
par( mfcol=c(1,2) )
bary.init(col="gray")
bary.init(l=2)
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
