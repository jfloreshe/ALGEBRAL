function x = gauss_seidel( n, A, b, x, M )
  u = zeros( 3, 1 );
  for k = 1 : M
    
    for i = 1 : n
      r = 0;
      
      for j = 1 : n
        if ( i == j )
          continue
        else
          r = r + A( i, j ) * x( j );
        endif
      end
      u( i ) = ( b( i ) - r ) / A( i, i );
    end
    
    for i = 1 : n
      x( i ) = u( i );
    end
    
  end
end      