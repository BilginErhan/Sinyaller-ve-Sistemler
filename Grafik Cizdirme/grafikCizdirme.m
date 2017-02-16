figure; %yeni figure penceresi
t=0:0.1:2; % vektör oluþtururu t=[0 0,1 0,2  .. . .. . 2]
f=2*exp(-t)./t.^2; %hesaplama lar yapýlýr
g=4*t.^2.*sin(2*t);
h=f.^2./(g-4).^2;
plot(t,f,'-g'); %t,f grafiði çizdirilir
hold on    %hold on ile ayný figure içinde üst üste çizileceði belirtilir
plot(t,g, '-b');  %ikinci grafik olan t,g grafiði çizdirilir
plot(t,t*10,'-r'); % üçüncü grafik olan t t*10 grafiði çizdirlir
legend('t,f grafik','t,g grafik','t,t*10 grafik');


