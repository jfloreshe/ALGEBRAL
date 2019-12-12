function RA = gaussJ(A)
  RA = A;
  [m n] = size(RA);
  for k=1:(m)#pivote diagonal 1,1 2,2 3,3
    if (RA(k,k) != 1)      
      uno = RA(k,k);
      for ii=k:n
        RA(k,ii) =  RA(k,ii)/uno;
      endfor
    endif
    for i=1:m
      if(i!=k)
        Mik = RA(i,k)/RA(k,k);
        for j = k:n
          RA(i,j) = -(Mik)*RA(k,j) + RA(i,j);
        end
      endif
     end
   end
   