function [ AA bb ] = gausss( A, b )
  n = size( A, 2 );
  for k = 1 : n
    for i = k + 1 : n
      m = -( A( i, k )) / A( k, k );
      for j = 1 : n
        A( i, j ) = A( i, j ) + m * A( k, j );
      end
      b( i, 1 ) = b( i, 1 ) + m * b( k, 1 );
    end
  end
  AA = A;
  bb = b; 
 end