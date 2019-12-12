function mc(x,y)
  f = figure();
  clf(f);
  m = length(x);
  % Add a column of all ones (intercept term) to x
  X = [ones(m, 1) x];
  theta = (pinv(X'*X))*X'*y;  
  plot(x,y,'rx','MarkerSize',8) % Plot the data
  hold on;  
  plot(X(:,2), X*theta,'-');
  hold off
  finalm = strcat("la ecuacion de la recta es\n y = ",mat2str(theta(2)),"x + ",mat2str(theta(1)));
  msgbox(finalm);