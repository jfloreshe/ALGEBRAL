function handleMatrizPanel(choice)
  c = choice;
  data = @dlmread;
  #dlmread("matriza.tex")  
  global iniciox;
  global inicioy;
  global botonW;
  global botonH;
  global screenW;
  global screenH;
  global paleta2;
  global paleta1;
  global paleta3;
  global paleta4;
  global window;
  ######################MATRICES QUE USAREMOS#######################
  global A=[];
  global B=[];
  matriz_b_w=botonW/2;
  str = " ";
  ###############################################
  panel_matrices = uipanel("parent",window,"title","MATRICES","position",[0.75 0.5 0.25 0.49],"backgroundcolor",paleta1,"bordertype","none","fontweight","bold","fontsize",15);
  buttons_matriz = uibuttongroup("parent",panel_matrices,"backgroundcolor",paleta1,"position",[0 0 1 1],"bordertype","none","fontweight","bold","fontsize",12); 
  switch(c)
    case 0   
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n SUMA";
    case 1 
      %mult%sum
      %suma
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n MULTIPLICACION";
    case 2 
      %inversa
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n INVERSA";
    case 3 
      %determinante
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n INVERSA";
    case 4
      %gauss
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n GAUSS";
    case 5
      %gaussjordan
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n GAUSS-JORDAN";
    case 6
      %gaussseidel TODO
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n GAUSS-SEIDEL";
    case 7%sustitucionr
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n SUSTITUCION-REGRESIVA";
    case 8%ecuacionlineal
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n ECUACION LINEAL";
    case 9%cholesky
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n CHOLESKY";
    case 10%lu
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n LU";
    case 11%qr
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n QR";
    case 12%regresion
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n REGRESION LINEAL";
      #n datos
    case 13%autov
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      str = "METODO:\n AUTOVALORES-AUTOVECTORES";
    case 14%metodopotencia
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n POTENCIA-AUTOVALOR-DOMINANTE";
      #maxiter
    case 15%potenica inversa
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      str = "METODO:\n POTENCIA-INVERSA-AUTOVALOR";
      %maxiter
    otherwise    
  endswitch  
  info = uicontrol("parent", buttons_matriz,"style","text","backgroundcolor",paleta1,"string",str,"position",[iniciox botonH*6 botonW+50 botonH*2]);
  button_enviar = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta4,"string","RESOLVER","position",[iniciox inicioy botonW botonH],"callback",{@(obj,event) resolver(c)});