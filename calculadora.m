function calculadora()
  # las posiciones son como un xy normal
  # uipanel o layers nos dibuja un panel sobre una figura y la posicion es en porcentajes inicio y tamaño
  # los botones o uicontrol usa posiciones directas
  #INICIALIZACION DE COSAS
   #SIZE
  global iniciox = 0;
  global inicioy = 0;
  global botonW = 180;
  global botonH = 40;
  global screenW = 960;
  global screenH = 720;
    #COLOR
  paleta1r = 80/255;
  paleta1g = 81/255;
  paleta1b = 96/255;
  global paleta1 = [paleta1r paleta1g paleta1b];
  paleta2r = 104/255;
  paleta2g = 130/255;
  paleta2b = 158/255;
  global paleta2 = [paleta2r paleta2g paleta2b];
  paleta3r = 174/255;
  paleta3g = 189/255;
  paleta3b = 56/255;
  global paleta3 = [paleta3r paleta3g paleta3b];
  paleta4r = 89/255;
  paleta4g = 130/255;
  paleta4b = 52/255;
  global paleta4 = [paleta4r paleta4g paleta4b];
  #FIGURAS
  f = figure("toolbar","none","position",[340 inicioy screenW screenH]);
  global window = f;
  panel_principal = uipanel("title","CALCULADORA DE MATRICES","position",[0 0 1 1],"backgroundcolor",paleta2,"fontweight","bold","fontsize",12);
  #GRUPO DE BOTONES
  menu_buttons = uibuttongroup("parent",panel_principal,"backgroundcolor",paleta4,"position",[0 0.59 0.75 0.40],"title","FUNCIONES","bordertype","none","fontweight","bold","fontsize",12);
  #botones de funciones
    #funciones simples
  button_suma = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","SUMA","position",[iniciox inicioy botonW botonH],"style", "pushbutton","callback",{@(obj,event) handleMatrizPanel(0)});
  button_multiplicacion = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","MULTIPLICACION","position",[iniciox botonH botonW botonH],"callback",{@(obj,event) handleMatrizPanel(1)});
  button_inversa = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","INVERSA","position",[iniciox botonH*2 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(2)});
  button_determinante = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","DETERMINANTE","position",[iniciox botonH*3 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(3)});
    #eliminacion gaussiana
  button_gauss = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","GAUSS","position",[botonW inicioy botonW botonH],"callback",{@(obj,event) handleMatrizPanel(4)});
  button_gaussJ = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","GAUSS-JORDAN","position",[botonW botonH botonW botonH],"callback",{@(obj,event) handleMatrizPanel(5)});
  button_gaussS = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","GAUSS-SEIDEL","position",[botonW botonH*2 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(6)});
  button_sustiR = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","SUSTI-REGRESIVA","position",[botonW botonH*3 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(7)});
  button_ecuacionL = uicontrol("parent", menu_buttons,"backgroundcolor",paleta2,"string","ECUACION-LINEAL","position",[botonW botonH*4 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(8)});
    #descomposicion
  button_cholesky = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","CHOLESKY","position",[botonW*2 inicioy botonW botonH],"callback",{@(obj,event) handleMatrizPanel(9)});
  button_LU = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","LU","position",[botonW*2 botonH botonW botonH],"callback",{@(obj,event) handleMatrizPanel(10)});
  button_QR = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","QR-G.SCHMITH","position",[botonW*2 botonH*2 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(11)});
    #regresion
  button_regresion = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","RL-MINIMOSC","position",[botonW*3 inicioy botonW botonH],"callback",{@(obj,event) handleMatrizPanel(12)});
    #autovectores-autovalores
  button_autoV = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","AVALORES-AVECTORES","position",[botonW*3 botonH botonW botonH],"callback",{@(obj,event) handleMatrizPanel(13)});
  button_metodoP = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","M-POTENCIA","position",[botonW*3 botonH*2 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(14)});
  button_metodoPI = uicontrol("parent", menu_buttons,"backgroundcolor",paleta3,"string","M-POTENCIA-INVERSA","position",[botonW*3 botonH*3 botonW botonH],"callback",{@(obj,event) handleMatrizPanel(15)});
  
 