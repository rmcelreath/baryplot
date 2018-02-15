\name{bary.drawarrow}
\alias{bary.drawarrow}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Draws an arrowhead }
\description{
  This function draws a simple arrowhead at a barycentric coordinate. It uses a first point to deduce the angle at which to orient the arrow.
}
\usage{
bary.drawarrow(pt1, pt2, length = 0.025, col = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pt1}{ Origin of vector, in barycentric coordinates }
  \item{pt2}{ Location of arrowhead, in barycentric coordinates }
  \item{length}{ Optional size of arrowhead }
  \item{col}{ Optional color of arrowhead }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.goodarrow}} }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
