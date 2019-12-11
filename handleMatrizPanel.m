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
  ###############################################
  panel_matrices = uipanel("parent",window,"title","MATRICES","position",[0.75 0.5 0.25 0.49],"backgroundcolor",paleta1,"bordertype","none","fontweight","bold","fontsize",15);
  buttons_matriz = uibuttongroup("parent",panel_matrices,"backgroundcolor",paleta1,"position",[0 0 1 1],"bordertype","none","fontweight","bold","fontsize",12); 
  switch(c)
    case 0
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
    case 1 
      %mult%sum
      %suma
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
    case 2 
      %inversa
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 3 
      %determinante
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 4
      %gauss
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 5
      %gaussjordan
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 6
      %gaussseidel TODO
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 7%sustitucionr
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
    case 8%ecuacionlineal
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
    case 9%cholesky
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 10%lu
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 11%qr
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 12%regresion
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      #n datos
    case 13%autov
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
    case 14%metodopotencia
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      #maxiter
    case 15%potenica inversa
      matriz_A = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ A","position",[iniciox botonH*2 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("A")});
      matriz_B = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta3,"string","MATRIZ B","position",[iniciox botonH*3 matriz_b_w botonH],"callback",{@(obj,event) getmatriz("B")});
      mostrarA_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*2 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("A")});  
      mostrarB_button = uicontrol("parent",buttons_matriz,"backgroundcolor",paleta4,"string","show","position",[matriz_b_w botonH*3 matriz_b_w/2 botonH],"callback",{@(obj,event) mostrarMatrices("B")});  
      %maxiter
    otherwise    
  endswitch  
  button_enviar = uicontrol("parent", buttons_matriz,"backgroundcolor",paleta4,"string","RESOLVER","position",[iniciox inicioy botonW botonH],"callback",{@(obj,event) resolver(c)});