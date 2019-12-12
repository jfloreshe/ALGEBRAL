function mstr = getMatrizString(A)
  mstr = "";
  [f c]= size(A);
  for i=1:f
     for j=1:c
       mstr = cstrcat(mstr,'  ',mat2str(A(i,j)));
     endfor
     mstr = strcat(mstr,"\n");
   endfor  