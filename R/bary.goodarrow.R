"bary.goodarrow" <-
function( origin , dest , length=0.025 , col="black" , border="black" , angle=pi/6 , backdist=1/2 ) {
  ## draws nice looking filled arrow
  ## get screen coords
  ##dest <- bary.toscreen( pt2[1], pt2[2] );
  ##origin <- bary.toscreen( pt1[1], pt1[2] );
  ## get angle and distance of vector, treating dest as origin
  obj <- bary.screen2polar( dest, origin );
  theta <- obj[1];
  dist <- obj[2];
  ## compute barbs
  barbleft <- bary.polar2screen( length , dest , (theta - angle) );
  barbright <- bary.polar2screen( length , dest , (theta + angle) );
  ## make polygon
  back <- bary.polar2screen( length*backdist , dest , theta );
  polyx <- c( dest[1] , barbleft[1] , back[1] , barbright[1] );
  polyy <- c( dest[2] , barbleft[2] , back[2] , barbright[2] );
  ## draw filled polygon
  polygon( polyx , polyy , col=col , border=border );
  theta;
}
