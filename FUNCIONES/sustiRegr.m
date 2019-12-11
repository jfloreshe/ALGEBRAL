function x = sustiRegr( U, b )
  f = size( U, 1 );
  x = zeros( f , 1 );
  for i = f : -1 : 1
    x( i ) = b( i );
    for j = i + 1 : f
      x( i ) = x( i ) - U( i, j ) * x( j );
    end
    x( i ) = x( i ) / U( i, i );
end