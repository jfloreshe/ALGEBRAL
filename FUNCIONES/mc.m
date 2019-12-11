function mc(X,Y,n)
  Sx = 0;
  Sy = 0;
  Sx2 = 0;
  Sxy = 0;
  for i=1:n
    Sx = Sx + X(i);
    Sy = Sy + Y(i);
    Sx2 = Sx2 + X(i)*X(i);
    Sxy = Sxy + X(i)*Y(i);
  end
  A = rref([Sx n Sy; Sx2 Sx Sxy])
  m = A(1,3)
  b = A(2,3)
  fprintf('y= %fx + %f\n',m,b);