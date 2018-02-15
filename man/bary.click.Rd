\name{bary.click}
\alias{bary.click}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Interactive plotting of dynamics }
\description{
  This function uses \code{locator} to get a user click and then begins a simulation from that point.
}
\usage{
bary.click(thegame = bary.game.hdr, color = FALSE, arrows = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{thegame}{ Function accepting frequencies of each strategy and returning fitness of each strategy }
  \item{color}{ If \code{TRUE}, system dynamics are plotted in color. See \code{bary.phase} for color definitions. }
  \item{arrows}{ If \code{TRUE}, system trajectories are plotted with arrows at regular intervals. }
  \item{\dots}{ Extra parameters to be passed down to \code{thegame} }
}
\value{
  Returns a vector of four numbers: the first two being the point clicked by the user, in barycentric coordinates, and the third and fourth being the point at which the simulated ended.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.plotsim}} }
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
