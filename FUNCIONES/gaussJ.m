function gaussJ(A)
  [m n] = size(A);
  for k=1:(m)#pivote diagonal 1,1 2,2 3,3
    if (A(k,k) != 1)      
      uno = A(k,k);
      for ii=k:n
        A(k,ii) =  A(k,ii)/uno;
      endfor
    endif
    for i=1:m
      if(i!=k)
        Mik = A(i,k)/A(k,k);
        for j = k:n
          A(i,j) = -(Mik)*A(k,j) + A(i,j);
        end
      endif
     end
   end
   A