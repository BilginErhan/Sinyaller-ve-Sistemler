clc;
clear;

i=1;
dx=1/4;
x=0;
y(1)=0;
a=1;
while(x(i)<10)
    
    dy = sin(x(i))*dx;
    y(i+1)=y(i)+dy;
    x(i+1)=x(i)+dx;
    
    if(i>5)
        for i=x(i-5):x(i)
            
        end
    end
    
    %dx = a*dx/(dy/dx);
    
    %fprintf('%d',dx);
    
    i=i+1;
    
end

figure;
plot(x,y,'-o');

% tspan = [0 50];
% y0 = 0;
% [t1,y1] = ode23(@(t1,y1) sin(t1), tspan, y0);
% 
% hold on;
% plot(t1,y1,'-x');