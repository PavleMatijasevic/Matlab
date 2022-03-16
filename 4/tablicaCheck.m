function t = tablicaCheck()
  
  tablica;
  rastuc = all(diff(X) > 0);
  
  if all(diff(Y) > 0) || all(diff(Y) < 0)
      monoton = 1;
  endif

  
  if rastuc & monoton
    t = 1;
   else 
    t = 0;
  endif
