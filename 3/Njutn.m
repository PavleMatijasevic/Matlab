
function N = Njutn(x)
  
  if polozaj(x) == 1
    N = Njutn1(x);
  endif
  if polozaj(x) == 2
    N = Njutn2(x);
  endif
