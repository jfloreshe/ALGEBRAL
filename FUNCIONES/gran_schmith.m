function [Q, R] = gran_schmith(A)
[m, n] = size(A);
R = zeros(m, n);
V = A;
Q=zeros(m, n);
k=1; 

for i =1:n
    R(i,i)= norm(V(:,i));  
    if abs(R(i,i)) > 1.0e-10
        Q(:,i)= V(:,i)/R(i,i);
    else  
        r= zeros(1, m);
              
        Q(:,i)= r;
        Q(k, i)=1;
        k=k+1;
        Q2 = Q;

        for j = 1 : i - 1
            r(j) = (Q2(:,j)')*Q2(:,i);
            Q(:,i)=Q(:,i) - r(j)*Q2(:,j);
            Q(:,i)=Q(:,i)/norm(Q(:,i));
        end
    end
   
    for j=i+1:n
       R(i,j)= (Q(:,i)')*V(:,j);
       V(:,j)=V(:,j) - R(i,j)*Q(:,i);
    end
end