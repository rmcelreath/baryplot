"bary.placearrow" <-
function(thegame=bary.game.hdr, ...) {
  ## takes a click as input and draws good arrow at that point, showing system traj
  pt <- locator(n=1);
  barypt <- bary.tobary( pt$x , pt$y );
  p <- barypt[1];
  q <- barypt[2];
  deltaxy <- bary.sim( p , q , thegame=thegame , ... );
  ##dist <- sqrt( deltaxy[1]^2 + deltaxy[2]^2 );
  newpt <- c( p - deltaxy[1] , q - deltaxy[2] );
  origin <- c( p , q );
  pt1 <- bary.toscreen( newpt[1] , newpt[2] );
  pt2 <- bary.toscreen( p , q );
  bary.goodarrow( pt1 , pt2 , length=0.025 );
}
