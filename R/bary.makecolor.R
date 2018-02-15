"bary.makecolor" <-
function(scolor) {
  rr <- 2*scolor - 1;
  if(rr < 0) rr <- 0;
  gg <- 2*scolor;
  if(gg > 1) gg <- (-2)*scolor + 2;
  bb <- -2*scolor + 1;
  if(bb < 0) bb <- 0;
  rgb(rr,gg,bb);
}
