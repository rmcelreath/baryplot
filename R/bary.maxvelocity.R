"bary.maxvelocity" <-
function(thegame=bary.game.hdr, ...) {
  ## finds maximum velocity in system
  maxdist <- 0;
  for( i in seq(0,1,by=0.025) ) {
    for( j in seq(0,1,by=0.025) ) {
      p <- i;
      q <- j;
      if( p+q > 1 ) next;
      deltaxy <- bary.sim( p , q , thegame=thegame, ... );
      dist <- sqrt( deltaxy[1]^2 + deltaxy[2]^2 );
      if(dist > maxdist) maxdist <- dist;
    }
  }
  maxdist;
}
