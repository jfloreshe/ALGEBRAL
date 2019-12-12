function drawmatriz(A)
   f= figure();
   clf(f);
   [f c] = size(A);    
   axis ([0 c 0 f]);
   k=f;
   for i=1:f
     for j=1:c
       ntext = mat2str(A(k,j));
       ntext = cstrcat(' ',ntext);
       text (j, i, ntext, ...
         "horizontalalignment", "center", ...
         "verticalalignment", "middle");
     endfor
     k = k - 1;
   endfor   
   grid on;
  