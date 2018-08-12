clc;
clear;

t=0;
dt=1/10;
y(1)=0;
y_degil(1)=0;
i=1;

%iyileþtirilmiþ euler yöntemi

while(t(i)<5)
    
    t(i+1)=t(i)+dt;
    
    x(i)=2*exp(t(i)); %%fonksiyon buraya yazýlýr   fonksiyon = 2e^t
    x(i+1)=2*exp(t(i+1)); %% fonksiyonun bir sonraki deðeri
    
    y_degil(i)=y(i)+dt*(x(i));  
    y(i+1)=y(i)+(dt/2)*(x(i)+x(i+1)); %%gerçek y deðeri
    
    i=i+1;
end

figure;
plot(t,y,'-o');


%hazýr ode23 fonksiyonu
tspan = [0 5];
y0 = 0;
[t1,y1] = ode23(@(t1,y1) 2*exp(t1), tspan, y0);

hold on;
plot(t1,y1,'-x');