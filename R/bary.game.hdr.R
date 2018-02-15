"bary.game.hdr" <-
function( p, q, r, v=2, c=3, w0=5 ) {
  w1 <- (p+q)*(v-c)/2 + r*v + w0;
  w2 <- p*(v-c)/2 + (1-p)*v/2 + w0;
  w3 <- (1-p)*v/2 + w0;
  c(w1,w2,w3);
}
