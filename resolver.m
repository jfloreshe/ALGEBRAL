function resolver(choice)
  global A;
  global B;
  global window;
  global paleta1;
  global paleta2;
  global paleta4;
  panel_answer = uipanel("parent",window,"title","RESPUESTAS","position",[0 0 0.75 0.57],"backgroundcolor",paleta1,"bordertype","none","fontweight","bold","fontsize",15);
  panel_save = uipanel("parent",window,"position",[0.75 0 0.25 0.5],"backgroundcolor",paleta4,"bordertype","none");
  switch(choice)
    case 0
      #suma
      C = sumam(A,B);
      #drawmatriz(C);
      test = getMatrizString(C);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",C)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",C)});
    case 1
      #mult
      C = mulm(A,B);
      #drawmatriz(C);
      test = getMatrizString(C);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",C)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",C)});
    case 2
      #invers
      Ci = inversa(A);      
      #drawmatriz(Ci);
      test = getMatrizString(Ci);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",Ci)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",Ci)});
    case 3
      #determin
      d = determinante(A);
      test = cstrcat("la determinante es: ", mat2str(d));
    case 4
      #gauss
      RA = gauss(A);
      #drawmatriz(RA);
      test = getMatrizString(RA);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",RA)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",RA)});
    case 5
      #gaussJ
      RA = gaussJ(A);
      #drawmatriz(RA);
      test = getMatrizString(RA);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",RA)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",RA)});
    case 6
      #gaussS
    case 7
      X = sustiRegr(A,B);
      #drawmatriz(X);
      #sustitucionR
      test = getMatrizString(X);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",X)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",X)});
    case 8
      #ecuacionL
      [a b] = gausss(A,B);
      X = sustiRegr(a,b);
      #drawmatriz(X);
      test = getMatrizString(X);
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",X)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",X)});
    case 9
      [L TL] = choleskyy(A);
      #drawmatriz(L);
      #drawmatriz(TL);
      test = "L=\n";
      test = cstrcat(test,getMatrizString(L));
      test = cstrcat(test,"Ltranspuesta=\n", getMatrizString(TL));
      save_buttonAL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR L EN A","position",[0 0 200 75],"callback",{@(obj,event) saveMatrix("A",L)});
      save_buttonBL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR L EN B","position",[0 75 200 75],"callback",{@(obj,event) saveMatrix("B",L)});
      save_buttonATL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR LT EN A","position",[0 150 200 75],"callback",{@(obj,event) saveMatrix("A",TL)});
      save_buttonBTL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR LT EN B","position",[0 225 200 75],"callback",{@(obj,event) saveMatrix("B",TL)});
      #cholesky
    case 10
      [L U] = LU(A);
      #drawmatriz(L);
      #drawmatriz(U);
      test = "L=\n";
      test = cstrcat(test,getMatrizString(L));
      test = cstrcat(test,"U=\n", getMatrizString(U));
      save_buttonAL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR L EN A","position",[0 0 200 75],"callback",{@(obj,event) saveMatrix("A",L)});
      save_buttonBL = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR L EN B","position",[0 75 200 75],"callback",{@(obj,event) saveMatrix("B",L)});
      save_buttonAU = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR U EN A","position",[0 150 200 75],"callback",{@(obj,event) saveMatrix("A",U)});
      save_buttonBU = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR U EN B","position",[0 225 200 75],"callback",{@(obj,event) saveMatrix("B",U)});
      #lu
    case 11
      [Q R] = gran_schmith(A);
      #drawmatriz(Q);
      #drawmatriz(R);
      test = "Q=\n";
      test = cstrcat(test,getMatrizString(Q));
      test = cstrcat(test,"R=\n", getMatrizString(R));
      save_buttonAQ = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR Q EN A","position",[0 0 200 75],"callback",{@(obj,event) saveMatrix("A",Q)});
      save_buttonBQ = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR Q EN B","position",[0 75 200 75],"callback",{@(obj,event) saveMatrix("B",Q)});
      save_buttonAR = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR R EN A","position",[0 150 200 75],"callback",{@(obj,event) saveMatrix("A",R)});
      save_buttonBR = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR R EN B","position",[0 225 200 75],"callback",{@(obj,event) saveMatrix("B",R)});
      #qr
    case 12
      mc(B,A);
      #regresionl
    case 13
      [V,D]= autovalor_autovector(A);
      #drawmatriz(V);
      #drawmatriz(D);
      test = "V=\n";
      test = cstrcat(test,getMatrizString(V));
      test = cstrcat(test,"D=\n", getMatrizString(D));
      save_buttonAV = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN A","position",[0 0 200 75],"callback",{@(obj,event) saveMatrix("A",V)});
      save_buttonBV = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN B","position",[0 75 200 75],"callback",{@(obj,event) saveMatrix("B",V)});
      save_buttonAD = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR D EN A","position",[0 150 200 75],"callback",{@(obj,event) saveMatrix("A",D)});
      save_buttonBD = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR D EN B","position",[0 225 200 75],"callback",{@(obj,event) saveMatrix("B",D)});
      #autov
    case 14
      [lam, V] = metPotencias(A,B,50);
      #drawmatriz(V);
      test = "V=\n";
      test = cstrcat(test,getMatrizString(V));
      test = cstrcat(test,"\nel autovalor dominante es:", mat2str(lam));
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",V)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",V)});
      #metodopo
    case 15
      [lam, V] = metPotenciasInversas(A,B,50);
      #drawmatriz(V);
      test = "V=\n";
      test = cstrcat(test,getMatrizString(V));
      test = cstrcat(test,"\nel autovalor es:", mat2str(lam));
      save_buttonA = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN A","position",[0 0 200 150],"callback",{@(obj,event) saveMatrix("A",V)});
      save_buttonB = uicontrol("parent", panel_save,"backgroundcolor",paleta2,"string","GUARDAR V EN B","position",[0 150 200 150],"callback",{@(obj,event) saveMatrix("B",V)});
      #metodopoin
    otherwise
  endswitch
  answer_text = uicontrol("parent", panel_answer,"style","text","backgroundcolor",paleta1,"string",test,"position",[0 0 720 410]);
  showA_button = uicontrol("parent",panel_save,"backgroundcolor",paleta1,"string","MOSTRAR\n MATRIZ A","position",[0 290 100 75],"callback",{@(obj,event) mostrarMatrices("A")});  
  showB_button = uicontrol("parent",panel_save,"backgroundcolor",paleta1,"string","MOSTRAR\n MATRIZ B","position",[100 290 100 75],"callback",{@(obj,event) mostrarMatrices("B")});  
