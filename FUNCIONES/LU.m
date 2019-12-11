function LU(A)
  [m n] = size(A);
  L = zeros(m,n);  
  U = A;
  for k=1:(m-1)#pivote diagonal 1,1 2,2 3,3
    L(k,k) = 1;
    for i=(k+1):m
      Mik = U(i,k)/U(k,k);
      L(i,k) = Mik;
      for j = k:n
        U(i,j) = -(Mik)*U(k,j) + U(i,j);
       end;
     end;
   end;   
   L(m,m) = 1;
   L
   U
