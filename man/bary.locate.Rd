\name{bary.locate}
\alias{bary.locate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Shows distances to each face }
\description{
  This function plots a given point or, when no point is specified, takes a user click and then plots the distance from the point to each face, showing the frequency of each strategy by the length of the line segment opposite a strategy's vertex.
}
\usage{
bary.locate()
bary.locate(point)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{point}{ A vector of two numbers giving the barycentric coordinate to locate. If omitted, \code{locator} is used to get a point from the user interactively. }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\examples{
bary.init()
bary.locate( c(1/3,1/5) )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
