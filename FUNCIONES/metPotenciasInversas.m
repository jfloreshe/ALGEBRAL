function [ lambda, V ] = metPotenciasInversas( A, X, max1 )
  A = inv( A );
  eps = 1e-10;
  lambda = 0;
  cnt = 0;
  err = 1;
  state = 1;
  while (( cnt <= max1 ) && ( state == 1 ))
    Y = A * X;
    [ m j ] = max( abs( Y ));
    c1 = m;
    dc = abs( lambda - c1 );
    Y = ( 1 / c1 ) * Y;
    dv = norm( X - Y );
    err = max( dc, dv );
    X = Y;
    lambda = c1;
    state = 0;
    if( err > eps )
      state = 1;
    end
    cnt = cnt + 1;
  end
  V = X;
end