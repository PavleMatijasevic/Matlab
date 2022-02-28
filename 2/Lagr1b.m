function [L,y] = Lagr1b(x,a,b,n)
  funkcija;
  [X,Y] = tablica(a,b,n)
  L = 0;
  n = length(X);
  for i = 1:n
    p = 1;
    for j = 1:n
      if i~=j
        p = conv(p, [1 -X(j)]/(X(i)-X(j)));
      endif
      
    endfor
    
    L = L + p*Y(i);
  endfor
  
  
  
  y = polyval(L,x);