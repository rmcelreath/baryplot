"bary.phase" <-
function(thegame=bary.game.hdr , length=0.02 , ...) {
  ## plots an arrow at each cell of ternary plot
  ## direction of arrow shows trajectory at that point
  ## color shows velocity, blue=slowest, red=fastest
  ## --
  ## first, find maximum velocity
  maxdist <- bary.maxvelocity(thegame=thegame, ... );
  ## now plot arrows
  for( i in seq(0,1,by=0.025) ) {
    for( j in seq(0,1,by=0.025) ) {
      p <- i;
      q <- j;
      if( p+q > 1 ) next;
      deltaxy <- bary.sim( p , q , thegame=thegame , ... );
      dist <- sqrt( deltaxy[1]^2 + deltaxy[2]^2 );
      newpt <- c( p - deltaxy[1] , q - deltaxy[2] );
      origin <- c( p , q );
      pt1 <- bary.toscreen( newpt[1] , newpt[2] );
      pt2 <- bary.toscreen( p , q );
      bc <- bary.makecolor(dist/maxdist);
      bary.goodarrow( pt1 , pt2 , length=length , col=bc , border=bc );
    }
  }
}
