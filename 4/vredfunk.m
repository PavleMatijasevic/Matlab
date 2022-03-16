function y = vredfunk(x)
  tablica;
  y = 0;
  
  n = length(X);
  prazlike = zeros(n,n-1);
  
  for i = 2:n
    prazlike(i-1,1) = (Y(i) - Y(i-1)) / (X(i) - X(i-1));
  endfor
  
  
  
  for j = 2:n-1
    for i = 1:n-j
      prazlike(i,j) = (prazlike(i+1,j-1) - prazlike(i,j-1)) / (X(i+j) - X(i));
    endfor
  endfor
  
  disp([X' Y' prazlike]);
  
  y = y + Y(1);
  cinilac = (x -X(1));
  for i = 1:n-1
    y = y + prazlike(1,i)*cinilac;
    cinilac = cinilac*(x - X(i));
  endfor
  
  