figure; %yeni figure penceresi
t=0:0.1:2; % vekt�r olu�tururu t=[0 0,1 0,2  .. . .. . 2]
f=2*exp(-t)./t.^2; %hesaplama lar yap�l�r
g=4*t.^2.*sin(2*t);
h=f.^2./(g-4).^2;
plot(t,f,'-g'); %t,f grafi�i �izdirilir
hold on    %hold on ile ayn� figure i�inde �st �ste �izilece�i belirtilir
plot(t,g, '-b');  %ikinci grafik olan t,g grafi�i �izdirilir
plot(t,t*10,'-r'); % ���nc� grafik olan t t*10 grafi�i �izdirlir
legend('t,f grafik','t,g grafik','t,t*10 grafik');


