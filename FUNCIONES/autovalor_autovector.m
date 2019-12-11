function autovalor_autovector(A)
  [m n] = size(A);
  [V,D]=eig(A);
  fprintf('Autovalores:\n');
  for i=1:m
    if (isreal(D))
      fprintf('*autovalor%i = %d\n',i,D(i,i));
    else
      fprintf('*autovalor%i = %d + %di\n',i,real(D(i,i)),imag(D(i,i)));
    endif
  end
  fprintf('\nAutovectores:\n');
  for i=1:m
    if(isreal(V))
      fprintf('*autovector para el autovalor %d =\n',D(i,i));
      for j=1:n
        fprintf('\t\t\t\t\t%d\n',V(j,i));
      end
    else
      fprintf('*autovector para el autovalor %d + %di =\n',real(D(i,i)),imag(D(i,i)));
      for j=1:n
        fprintf('\t\t\t\t\t%d + %di\n',real(V(j,i)),imag(V(j,i)));
      end
    endif
  end
  V
  D