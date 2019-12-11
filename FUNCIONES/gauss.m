function gauss(A)
  [m n] = size(A);
  for k=1:(m-1)#pivote diagonal 1,1 2,2 3,3
    for i=(k+1):m
      Mik = A(i,k)/A(k,k)
      for j = k:n
        A(i,j) = -(Mik)*A(k,j) + A(i,j)
       end;
     end;
   end;
   A
    