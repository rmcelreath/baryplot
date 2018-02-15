"bary.plotsim" <-
function( sx , sy , arrow=FALSE , withcol=FALSE, thegame=bary.game.hdr, ... ) {
  ## takes a starting point and plots a simulation trajectory
  ## arrow=TRUE plots arrows to show direction of path
  x <- sx;
  y <- sy;
  if(withcol) maxv <- bary.maxvelocity(thegame=thegame, ...);
  dist <- 1;
  arrowcount <- 0;
  while(dist > 0.00001) {
    deltaxy <- bary.sim( x , y , thegame=thegame , ... );
    newpt <- c( deltaxy[1] + x, deltaxy[2] + y );
    origin <- c( x, y );
    arrowflag <- FALSE;
    if( arrowcount > 0.25 && arrow ) {
      arrowcount <- 0;
      arrowflag <- TRUE;
    }
    dist <- sqrt( deltaxy[1]^2 + deltaxy[2]^2 );
    acolor <- "black";
    if(withcol) acolor <- bary.makecolor(dist/maxv);
    bary.line( origin, newpt, arrow=arrowflag, col=acolor );
    arrowcount <- arrowcount + dist;
    x <- newpt[1];
    y <- newpt[2];
  }
  c( c(sx,sy), c(x, y) );
}
