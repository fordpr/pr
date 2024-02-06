a=0;
b=pi;
m = 3;

presne = pi^(2)-4;

while norm( presne - SimpsonovoSlozene(a,b,m) ) > 10^(-5)
m = m+1;
if m > 10000
break;
end
end

m
