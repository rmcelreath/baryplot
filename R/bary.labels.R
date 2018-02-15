"bary.labels" <-
function( right, top, left ) {
  ## labels for strategies
  text( 0, 0, left, xpd=NA, adj=c(1,1.5) );
  text( 1, 0, right, xpd=NA, adj=c(0,1.5) );
  text( 0.5, 1, top, xpd=NA, adj=c(0.5,2) );
}
