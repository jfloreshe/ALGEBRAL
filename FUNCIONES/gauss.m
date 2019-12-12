function RA = gauss(A)
  RA = A;
  [m n] = size(RA);
  for k=1:(m-1)#pivote diagonal 1,1 2,2 3,3
    for i=(k+1):m
      Mik = RA(i,k)/RA(k,k);
      for j = k:n
        RA(i,j) = -(Mik)*RA(k,j) + RA(i,j);
      end;
    end;
   end;
 
    