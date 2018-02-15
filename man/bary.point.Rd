\name{bary.point}
\alias{bary.point}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Plots a point in barycentric coordinates }
\description{
  This function takes a barycentric coordinate and plots a point there, using \code{points}.
}
\usage{
bary.point(point1, pch = 21, bg = "white", col = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{point1}{ A barycentric coordinate, as a vector of two numbers }
  \item{pch}{ Optional shape of point, as per \code{pch} in \code{points}. Default is an open circle. }
  \item{bg}{ Optional fill color for point. Default is white. }
  \item{col}{ Optional border color for point. Default is black. }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.line}}, \code{\link{points}} }
\examples{
bary.init()
bary.point( c(1/3,1/3), pch=25, bg="red" )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
