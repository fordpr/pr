a = 0;
b = 2*pi;
poc = 0;

n = 25;
[xn,yn] = ab3(a,b,n,poc);
xnp = a:0.001:b;
ynp = fce(xnp);


hold on
    plot(xn,yn,'k*');
    plot(xnp,ynp,'r'),grid
hold off
