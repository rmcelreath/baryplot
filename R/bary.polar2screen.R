"bary.polar2screen" <-
function( dist, origin, theta ) {
  ## takes dist, angle and origin and returns x and y of destination point
  vx <- cos(theta) * dist;
  vy <- sin(theta) * dist;
  c( origin[1]+vx , origin[2]+vy );
}
