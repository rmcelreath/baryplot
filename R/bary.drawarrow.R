"bary.drawarrow" <-
function( pt1 , pt2 , length=0.025 , col="black" ) {
  ## this draws a basic 45 degree barbed simple line arrow
  ## get screen coords
  dest <- bary.toscreen( pt2[1], pt2[2] );
  origin <- bary.toscreen( pt1[1], pt1[2] );
  ## Find the arrow shaft unit vector.
  vx <- (dest[1] - origin[1]);
  vy <- (dest[2] - origin[2]);
  dist <- sqrt(vx * vx + vy * vy);
  vx <- vx / dist;
  vy <- vy / dist;
  ## Draw the right barb.
    ax <- (-vy - vx);
    ay <- (vx - vy);
  ## Set the proper length.
  ax <- ax * length + dest[1];
  ay <- ay * length + dest[2];
  lines( c( dest[1],ax ) , c( dest[2],ay ) , col=col );
  ## Find the left barb.
    ax <- (vy - vx);
    ay <- (-vx - vy);
  ax <- ax * length + dest[1];
  ay <- ay * length + dest[2];
  lines( c( dest[1],ax ) , c( dest[2],ay ) , col=col );
}
