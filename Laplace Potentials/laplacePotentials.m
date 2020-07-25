clear all, close all, clc

V0 = 1;
a = 1;

initialValue_X = 0.01;
interval = 0.01;
finalValue_X = 2;

initialValue_Y = 0.01;
finalValue_Y = 1;


y = initialValue_Y:interval:finalValue_Y;
x = initialValue_X:interval:finalValue_X;  

z = [];

for i = 1:length(y)
    
    for j = 1:length(x)
        z(i,j) = atan((sin(pi * y(i) /a))/(sinh(pi * x(j)/a))) ;
    
    end
end


xlabel('X');
ylabel('Y');
zlabel('Potential');

[X, Y] = meshgrid(x,y);
mesh(X,Y,z);
