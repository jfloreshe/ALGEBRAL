function [lambda,V] = metodo_potencia_inversa(A,X,alpha,epsilon,max1)
  %Datos
  % A es una matriz de orden nxn
  % X es el vector inicial de orden nx1
  % alpha es latraslación
  % epsilon es la tolerancia
  % max1 es el numero maximo de iteraciones
  %RESULTADOS
  % lambda es el autovalor que está más cerca de alfa
  % V es el autovector asociado a lambda
  [n n] = size(A);
  A = A-alpha*eye(n);
  lambda = 0;
  cnt = 0;
  err = 1;
  state = 1;
  [L,U,P] = lu(A)
  
  while((cnt<=max1)&(state==1))
    %resoluion del sistema AY=X
    Y = L\(P*X);
    Y = U\Y;
    %Normalizacion de Y
    [m j]=max(abs(Y));
    c1 = m;
    dc = abs(lambda - c1);
    Y = (1/c1)*Y;
    %Actualización de X y de lambda y criterio de convergencia
    dv = norm(X-Y);
    err = max(dc,dv);
    X = Y;
    lambda = c1;
    state = 0;
    if(err>epsilon)
      state = 1;
    end
    cnt = cnt+1;
  end
    1