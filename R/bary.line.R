"bary.line" <-
function( point1 , point2, arrow=FALSE, l=1, col="black" ) {
  pt1 <- bary.toscreen(point1[1], point1[2]);
  pt2 <- bary.toscreen(point2[1], point2[2]);
  lines( c(pt1[1],pt2[1]), c(pt1[2],pt2[2]), lty=l, col=col );
  if( arrow ) bary.goodarrow( pt1, pt2, length=0.025, col=col, border=col );
}
