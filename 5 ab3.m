function [osax,vysledek] = ab3(a,b,n,poc)  %eto pryam ono doljno byt`, i nazvaniya sobliudaj 

   h = (b-a)/n;
   fi = zeros(1,n+1);
   ox = zeros(1,n+1);
   ox(1) = a;
   fi(1)=poc;
   i=2;
   ox(i)=a+(i-1)*h;
   fi(i)=fi(i-1)+h*drce(a+(i-2)*h+h/2,fi(i-1)+h/2*drce(a+(i-2)*h,fi(i-1)));
   for i=3:n+1
       ox(i)= a+(i-1)*h; 
       fi(i) = fi(i-1)+3*h/2*drce(ox(i-1),fi(i-1))- h/2 * drce(ox(i-2),fi(i-2));
   end
   osax = ox;
   vysledek = fi;
  
end
