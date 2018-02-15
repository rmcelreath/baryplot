"bary.toscreen" <-
function(x,y) {
    ## converts barycentric coords to cartesian screen coords
    ## x is freq of strat in lower right
    ## y is freq of strat at top
    ## thus 1-x-y is freq of strat in lower left
    theheight <- 1;
    thewidth <- 1;
    c( (x + y/2)*thewidth , (y/1.14142)*thewidth );   
}
