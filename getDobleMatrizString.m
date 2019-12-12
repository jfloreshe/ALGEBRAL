function mstr = getDobleMatrizString(A,B,na,nb)
  mstr = "";
  mstr = cstrcat(na,"=\n",getMatrizString(A));
  mstr = cstrcat(test,nb,"=\n", getMatrizString(B));