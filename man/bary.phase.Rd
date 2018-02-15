\name{bary.phase}
\alias{bary.phase}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Color phase space plot }
\description{
  This functions plots arrows at regular intervals in a barycentric plot. The arrow directions show the trajectory of the system at each point. The colors show the velocity at each point.
}
\usage{
bary.phase(thegame = bary.game.hdr, length = 0.02, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{thegame}{ Function taking frequencies of each strategy and returning fitness values }
  \item{length}{ Size of arrows }
  \item{\dots}{ Parameters to pass to \code{thegame} }
}
\details{
  The colors are mixed using \code{bary.makecolor}. Red is the fastest dynamics, then green, and finally blue for the slowest.

  This function calls \code{bary.maxvelocity} to calibrate the colors.

  Points of very slow dynamics may draw arrows incorrectly.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.contour}} }
\examples{
bary.init()
bary.labels("Hawk","Retaliator","Dove")
bary.phase()
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
