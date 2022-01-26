 h = 0.00001;          %step value                                      
 t=0;                 %initializations
 y=0;
 

 figure
 hold on
 plot(t,y,'--');     %ploting numerical analysis values
 
 
 for i = 1:100       %total hundred iterations totaling to 1 ms.
 t(i+1)=t(i)+h;
 y(i+1)=y(i)+h*fg(y(i));
 

 plot(t,y,'--');
 hold on
 
 end
x = linspace(0,0.001,100);    %plot of analytical analysis (to see numerical
y1 = 767.44*(1-exp(-1*11180*x)); %only delete  line 20-23)

plot(x,y1,'g-');
 
%function for calculating and updating velocity derivative.

 function f = fg(y)
       f=9.8*0.87577- ((11180)*y);
      
 end