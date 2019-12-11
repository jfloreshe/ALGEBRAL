function [lambda,V] = metodo_potencia(A,X,epsilon,max1)
  %Datos
  % A es una matriz de orden nxn
  % X es el vector inicial de orden nx1
  % epsilon es la tolerancia
  % max1 es el numero maximo de iteraciones
  %RESULTADOS
  % lambda es el autovalor dominante
  % V es el autovalor dominante
  lambda = 0;
  cnt = 0;
  err = 1;
  state = 1;
  
  while((cnt<=max1)&(state==1))
    Y = A*X;
    [m j] = max(abs(Y));
    c1 = m;
    dc = abs(lambda - c1);
    Y = (1/c1)*Y;
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
  V=X
    