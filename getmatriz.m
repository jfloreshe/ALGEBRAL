function getmatriz(choice)
  prompt = {'Tamano de la matriz: como en el ejemplo'};
  dlgtitle = 'Tamano de la matriz';
  dims = 1;
  definput = {'3 5'};
  answer = inputdlg(prompt,dlgtitle,dims,definput);
  answervector = str2num(answer{1});
  filas = answervector(1);
  columnas = answervector(2);
  openfile = false;
  global A;
  global B;
  global window;
  if (filas > 7)
      openfile = true;   
  elseif (columnas > 7)
      openfile = true;
  else
      openfile = false;
      switch(choice)
        case "A"
          A = zeros(filas,columnas);
        case "B"
          B = zeros(filas,columnas);
        otherwise
      endswitch
  endif 
  
  if(openfile)
    msgbox("escoga su archivo que contenga la matriz");
    switch (choice)
      case "A"        
        [name,folder] = uigetfile("*.tex","agregando una matriz","./MATRICES/");
        matrizApath = fullfile(folder,name);
        A = dlmread(matrizApath);
      case "B"
        [name,folder] = uigetfile("*.tex","agregando una matriz","./MATRICES/");
        matrizBpath = fullfile(folder,name);
        B = dlmread(matrizBpath);
      otherwise
        fprintf("wrong choice");
   endswitch
  else    
      for i=1:filas
        nf = mat2str(i);
        finalPrompt = strcat("fila ",nf);
        prompt2 = {finalPrompt};
        ftitle = finalPrompt;
        dims = 1;
        definput = {''};
        answerlow = inputdlg(prompt2,ftitle,dims,definput);
        answerlowarray = str2num(answerlow{1});
        for j=1:columnas          
          switch(choice)
            case "A"
              A(i,j) = answerlowarray(j);
            case "B"
              B(i,j) = answerlowarray(j);
            otherwise
              fprintf("wrong choice");
          endswitch
        endfor          
      endfor 
  endif

  