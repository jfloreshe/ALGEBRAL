function sumam(A,B)
  [m n] = size(A)
  C=zeros(m,n)
  for i=1:m
    for j=1:n
      C(i,j)=A(i,j)+B(i,j);
    end
  end
  C