\name{bary.contour}
\alias{bary.contour}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Plots regions of increase and decrease }
\description{
  This function plots a phase diagram showing only regions of increase (in green) and decrease (in red), for a single strategy.
}
\usage{
bary.contour(strat = 1, thegame = bary.game.hdr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{strat}{ The strategy to plot: 1, 2 or 3. }
  \item{thegame}{ Function taking frequencies of strategies and returning fitness values }
  \item{\dots}{ Parameters to pass to \code{thegame} }
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.phase}} }
\examples{
par(mfcol=c(1,3))
bary.init()
bary.contour(strat=1)
bary.init()
bary.contour(strat=2)
bary.init()
bary.contour(strat=3)
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
