"bary.init" <-
function(l=1, col="black") {
  ## initializes window, coordinates, and draws triangle
  plot.new();
  plot.window(c(0,1), c(0,1), asp=1 );
  bary.line( c(0,0), c(0,1), l=l, col=col );
  bary.line( c(0,0), c(1,0), l=l, col=col );
  bary.line( c(1,0), c(0,1), l=l, col=col );
}
