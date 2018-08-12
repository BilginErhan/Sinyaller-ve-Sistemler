clc;                                               
clear;

dt=0.1;                                             
t=0; 
i=1; 
y(1) = 1;                                                         

while t(i)<100
    
    %4. derece runge kutta  yöntemi
    
    k_1 = f(t(i),y(i));
    k_2 = f(t(i)+0.5*dt,y(i)+0.5*dt*k_1);
    k_3 = f((t(i)+0.5*dt),(y(i)+0.5*dt*k_2));
    k_4 = f((t(i)+dt),(y(i)+k_3*dt));

    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*dt; 
    
    t(i+1)=t(i)+dt;
    i=i+1;
end

figure;

plot(t,y,'-*');

%hazýr ode23 fonksiyonu
tspan = [0 100];
y0 = 1;
[t1,y1] = ode23(@(t1,y1) sin(t1), tspan, y0);

hold on;
plot(t1,y1,'r');

