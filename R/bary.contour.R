"bary.contour" <-
function( strat=1, thegame=bary.game.hdr, ... ) {
  ## plots regions of increase, decrease, and stasis of strat
  ## red = decrease, green = increase, white = no change
  for( i in seq(0,1,by=0.025) ) {
    for( j in seq(0,1,by=0.025) ) {
      p <- i;
      q <- j;
      if( p+q > 1 ) next;
      deltaxy <- bary.sim( p , q , thegame=thegame , ... );
      origin <- c( p , q );
      delta <- deltaxy[strat];
      if( delta < 0 ) bary.point( origin , bg="red" , col="red" );
      if( delta > 0 ) bary.point( origin , bg="green" , col="green" );
      if( delta == 0 ) bary.point( origin , bg="white" , col="transparent" );
    }
  }
  0;
}
