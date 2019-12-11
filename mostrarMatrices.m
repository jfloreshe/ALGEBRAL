function mostrarMatrices(choice)
  global A;
  global B;
  
  switch(choice)
    case "A"
      [afil acol] = size(A);
      mensajeA = "";
      for i=1:afil
        for j=1:acol
          mensajeA = cstrcat(mensajeA,' ',mat2str(A(i,j)));
        endfor
          mensajeA = cstrcat(mensajeA,"\n");
      endfor
      msgbox(mensajeA);
    case "B"
      [bfil bcol] = size(B);
      mensajeB = "";
      for i=1:bfil
        for j=1:bcol
          mensajeB = cstrcat(mensajeB,' ',mat2str(B(i,j)));
        endfor
          mensajeB = cstrcat(mensajeB,"\n");
      endfor
      msgbox(mensajeB);
    otherwise
  endswitch
