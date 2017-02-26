% dy1(t)/dt = -3y1(t)-2y2(t)
% dy2(t)/dt =  4y1(t)+2y2(t)    y1(t) ve y2(t) hesaplayýp
% y1(0)=1 , y2(0)=1             çizdiren matlab programý

% y1(i+1)=y1(i)+dy1(i);            y2(i+1)=y2(i)+dy2(i);

% dy1(t)=[-3y1(t)-2y2(t)]*dt;      dy2(t)=[4y1(t)+2y2(t)]*dt;
clc; clear;

y1(1)=1; y2(1)=1;
t=0; i=1; dt=1/100;

while(t(i)<=2)
   
    dy1 = (-3*y1(i) - 2*y2(i))*dt; %dy1 ve dy2 deðeri hesaplanýr
    dy2 = (4*y2(i) + 2*y2(i))*dt;
    
    y1(i+1) = y1(i) + dy1; %hesaplanan dy1 ve dy2 ye göre y1 ve y2 
    y2(i+1) = y2(i) + dy2; %grafiðini bir sonraki deðeri hesaplanýr
    
    t(i+1) = t(i) + dt; %artýþ deðeri kadar arttýrýlýr sayaçýmýz 
    
    i=i+1;  %indis deðiþkeni bir sonraki döngü için arttýrýlýr

end

figure; %yeni bir pencere açtýrýlýr.
plot(t,y1,'-r');    %y1(t) grafiði çizdirilir
hold on;        %hold on ile yeni çizilecek grafik ayný figurde olmasý saðlanýr
plot(t,y2,'-b');    %y2(t) grafiði çizdilirir
legend('y1(t) grafiði','y2(t) grafiði'); %grafik tablosundaki baþlýk yazdýrýlýr.

