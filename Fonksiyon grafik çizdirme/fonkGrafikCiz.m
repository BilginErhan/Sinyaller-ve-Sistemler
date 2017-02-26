% dy1(t)/dt = -3y1(t)-2y2(t)
% dy2(t)/dt =  4y1(t)+2y2(t)    y1(t) ve y2(t) hesaplay�p
% y1(0)=1 , y2(0)=1             �izdiren matlab program�

% y1(i+1)=y1(i)+dy1(i);            y2(i+1)=y2(i)+dy2(i);

% dy1(t)=[-3y1(t)-2y2(t)]*dt;      dy2(t)=[4y1(t)+2y2(t)]*dt;
clc; clear;

y1(1)=1; y2(1)=1;
t=0; i=1; dt=1/100;

while(t(i)<=2)
   
    dy1 = (-3*y1(i) - 2*y2(i))*dt; %dy1 ve dy2 de�eri hesaplan�r
    dy2 = (4*y2(i) + 2*y2(i))*dt;
    
    y1(i+1) = y1(i) + dy1; %hesaplanan dy1 ve dy2 ye g�re y1 ve y2 
    y2(i+1) = y2(i) + dy2; %grafi�ini bir sonraki de�eri hesaplan�r
    
    t(i+1) = t(i) + dt; %art�� de�eri kadar artt�r�l�r saya��m�z 
    
    i=i+1;  %indis de�i�keni bir sonraki d�ng� i�in artt�r�l�r

end

figure; %yeni bir pencere a�t�r�l�r.
plot(t,y1,'-r');    %y1(t) grafi�i �izdirilir
hold on;        %hold on ile yeni �izilecek grafik ayn� figurde olmas� sa�lan�r
plot(t,y2,'-b');    %y2(t) grafi�i �izdilirir
legend('y1(t) grafi�i','y2(t) grafi�i'); %grafik tablosundaki ba�l�k yazd�r�l�r.

