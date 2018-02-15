"bary.click" <-
function(thegame=bary.game.hdr, color=FALSE, arrows=FALSE, ...) {
  ## takes a click as input and runs a simulation from that point
  pt <- locator(n=1);
  barypt <- bary.tobary( pt$x, pt$y );
  bary.plotsim( barypt[1] , barypt[2] , arrow=arrows , withcol=color , thegame=thegame, ... );
}
