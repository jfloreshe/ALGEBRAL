function [H,H2] = choleskyy( A )
  n = size( A, 1 );
  H = zeros( n );
  H2 = zeros( n );
  for k = 1 : n
    for i = 1 : k - 1
      sum1 = 0;
      for j = 1 : i - 1
        sum1 = sum1 + H( i, j ) * H( k, j );
      end
      H( k, i ) = ( A( k, i ) - sum1 )/ H( i, i );
      H2(i,k) = H(k,i); 
    end
    sum2 = 0;
    for j = 1 : k - 1
      sum2 = sum2 + power( H( k, j ), 2 );
    end
    H( k, k ) = sqrt( A( k, k ) - sum2 );
    H2( k, k ) = H(k,k);
  end
end
