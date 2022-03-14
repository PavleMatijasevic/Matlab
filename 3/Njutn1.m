function N = Njutn1(x)
  tablica;
  N = 0;
  n = length(X);
  krazlike = zeros(n,n-1);
  h = X(2) - X(1);
  for i = 1:n-1
        krazlike(i,1) = Y(i+1) - Y(i);
  endfor
  for j = 2:n-1
  for i = 1:n-j
      krazlike(i,j) = krazlike(i+1,j-1) - krazlike(i,j-1);
    endfor
  endfor
  
disp([X' Y' krazlike]);

q = x - X(1);
q = q / h;

N = N + Y(1);
Q = q;
for i = 1:n-1
  N = N + (Q*krazlike(1,i)) / factorial(i);
  Q = Q * (q-i);
  endfor
