"bary.tobary" <-
function( u , v ) {
  theheight <- 1;
  thewidth <- 1;
  uw <- u / thewidth;
  vw <- v / thewidth;
  y <- vw * 1.14142;
  x <- uw - y/2;
  c( x , y );
}
