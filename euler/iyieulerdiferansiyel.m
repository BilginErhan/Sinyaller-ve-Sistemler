clc;
clear;

t=0;
dt=1/10;
y(1)=0;
y_degil(1)=0;
i=1;

%iyile�tirilmi� euler y�ntemi

while(t(i)<10)
    
    t(i+1)=t(i)+dt;
    
    x(i)=sin(t(i)); %%fonksiyon buraya yaz�l�r   fonksiyon = 2e^t
    x(i+1)=sin(t(i+1)); %% fonksiyonun bir sonraki de�eri
    
    y_degil(i)=y(i)+dt*(x(i));  
    y(i+1)=y(i)+(dt/2)*(x(i)+x(i+1)); %%ger�ek y de�eri
    
    %dt=dt/();
    
    i=i+1;
end

figure;
plot(t,y,'-o');


% haz�r ode23 fonksiyonu
tspan = [0 100];
y0 = 0;
[t1,y1] = ode23(@(t1,y1) sin(t1), tspan, y0);

hold on;
plot(t1,y1,'-x');