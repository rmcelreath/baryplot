\name{bary.maxvelocity}
\alias{bary.maxvelocity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Finds fastest change in system }
\description{
  This function is used internally by \code{bary.plotsim} and \code{bary.phase} to calibrate color plotting.
}
\usage{
bary.maxvelocity(thegame = bary.game.hdr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{thegame}{ Function taking frequencies of each strategy and returning fitness values }
  \item{\dots}{ Parameters to be passed to \code{thegame} }
}
\value{
  Returns a single number that is the greatest distance in barycentric space moved by the system, over the entire phase space.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
