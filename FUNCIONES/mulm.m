function mulm(A,B)
  [m n] = size(A)
  [n p] = size(B)
  C=zeros(m,p)
  for i=1:m
    for j=1:p      
      sum = 0;
      for k=1:n
        sum = sum + A(i,k)*B(k,j)
       end
       C(i,j) = sum;
    end
  end
  C