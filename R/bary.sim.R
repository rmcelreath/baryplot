"bary.sim" <-
function( startx, starty, thegame=bary.game.hdr, ... ) {
  p <- startx;
  q <- starty;
  ## call the game function to get fitness values
  w <- thegame( p, q, 1-p-q , ... );
  wbar <- p*w[1] + q*w[2] + (1-p-q)*w[3];
  dp <- p*w[1]/wbar - p;
  dq <- q*w[2]/wbar - q;
  dr <- (1-p-q)*w[3]/wbar - (1-p-q);
  c(dp,dq,dr);
}
