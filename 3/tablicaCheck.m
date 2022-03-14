function t = tablicaCheck()
  tablica;
  korak = X(2) - X(1);
  ekv = all(diff(X) == korak);
  monotonost = all(diff(X) > 0);
  
  if ekv && monotonost
    t = 1;
  else
    t = 0;
  endif
