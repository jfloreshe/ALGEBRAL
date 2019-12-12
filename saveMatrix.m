function saveMatrix(choice,M)
  global A;
  global B;
  switch(choice)
    case "A"
      A= M;
    case "B"
      B= M;
    otherwise
  endswitch