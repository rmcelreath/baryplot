"bary.game.rps" <-
function( p, q, r, b=4 , c=-2 , w0=15 ) {
  w1 <- p*0 + q*b + r*c + w0;
  w2 <- p*c + q*0 + r*b + w0;
  w3 <- p*b + q*c + r*0 + w0;
  c(w1,w2,w3);
}
