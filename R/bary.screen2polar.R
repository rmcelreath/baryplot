"bary.screen2polar" <-
function( origin, dest ) {
  ## takes two points and returns distance and angle, from origin to dest
  vx <- dest[1] - origin[1];
  vy <- dest[2] - origin[2];
  dist <- sqrt( vx*vx + vy*vy );
  theta <- asin( abs(vy) / dist );
  ## correct for quadrant
  if( vx < 0 && vy < 0 ) theta <- pi + theta; # lower-left
  if( vx < 0 && vy > 0 ) theta <- pi - theta; # upper-left
  if( vx > 0 && vy < 0 ) theta <- 2*pi - theta; # lower-right
  if( vx < 0 && vy==0 ) theta <- pi;
  if( vx==0 && vy < 0 ) theta <- 3*pi/2; 
  ## return angle and dist
  c( theta, dist );
}
