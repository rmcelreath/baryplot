"bary.point" <-
function( point1, pch=21, bg="white", col="black" ) {
  ## default point is an empty circle
  pt <- bary.toscreen(point1[1], point1[2]);
  points( pt[1], pt[2], pch=pch, bg=bg, col=col );
}
