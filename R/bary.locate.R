"bary.locate" <-
function( point=0 ) {
  ## draws point and then draws distances to it as dashed lines
  if( length(point)==1 ) {
    cpt <- locator(n=1);
    point <- bary.tobary(cpt$x,cpt$y);
  }
  bary.line( c( bary.toscreen(point[1],point[2])[1] , 0 ), point, l=2 );
  bary.line( c( 0 , bary.toscreen(point[2],point[1])[1] ), point, l=2 );
  r <- 1 - point[1] - point[2];
  x <- bary.toscreen( point[1] , r )[1];
  y <- bary.toscreen( point[2] , r )[1];
  bary.line( c( x , y ), point, l=2 );
  bary.point( point );
  point;
}
