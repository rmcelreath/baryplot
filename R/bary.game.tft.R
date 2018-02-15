"bary.game.tft" <-
function( p, q, r, b=2, c=1, w=0.75, w0=15 ) {
  w1 <- (p+q)*(b-c)/(1-w) + r*(-c) + w0;
  w2 <- (p+q)*(b-c)/(1-w) + r*(-c)/(1-w) + w0;
  w3 <- p*b + q*b/(1-w) + w0;
  c(w1,w2,w3);
}
