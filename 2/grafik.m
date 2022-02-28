function grafik(x,a,b,n);
funkcija;
[L,y] = Lagr1b(x,a,b,n);

xx = linspace(a,b);

hold on

plot(xx,f(xx));
plot(xx,polyval(L,xx));

hold off