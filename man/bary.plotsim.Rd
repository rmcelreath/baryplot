\name{bary.plotsim}
\alias{bary.plotsim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Plot evolutionary trajectory of system }
\description{
  This function conducts and plots a single evolutionary simulation, starting from a given mix of strategies. 
}
\usage{
bary.plotsim(sx, sy, arrow = FALSE, withcol = FALSE, thegame = bary.game.hdr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sx}{ Starting frequency of right strategy }
  \item{sy}{ Starting frequency of top strategy }
  \item{arrow}{ If \code{TRUE}, arrows are drawn along the trajectory, to show direction. }
  \item{withcol}{ If \code{TRUE}, trajectories are shown in color, to indicate velocity at each point, as per \code{bary.phase}. }
  \item{thegame}{ Function taking frequencies of each strategy and returning a vector of three fitness values }
  \item{\dots}{ Parameters to pass to \code{thegame} }
}
\details{
  This function calls \code{bary.sim} to do the dirty work, and then iterates the system until convergence. If the system does not converge, the function will continue to iterate indefinitely. 
}
\value{
  After convergence, returns a vector of four numbers: the starting x barycentric coordinate, the starting y barycentric coordinate, the ending x barycentric coordinate, and the ending y barycentric coordinate.
}
\author{ Richard McElreath (mcelreath@ucdavis.edu) }
\seealso{ \code{\link{bary.sim}} }
\examples{
bary.init()
bary.plotsim( 1/3, 1/3, thegame=bary.game.tft, arrow=TRUE, withcol=FALSE, w=0.9 )
}
\keyword{ ~kwd1 }% at least one, from doc/KEYWORDS
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
