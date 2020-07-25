clear all, close all, clc

V0 = 1;
a = 1;
b = 1;
Total_intervals = 100;

initialValue_X = -1;
finalValue_X = 1;

initialValue_Y = 0;
finalValue_Y = 1;

x = linspace(initialValue_X,finalValue_X, Total_intervals);  

y = linspace(initialValue_Y,finalValue_Y, Total_intervals);  

z = zeros(length(x), length(y));

n = 0;

for i = 1:length(y)
    
    for j = 1:length(x)
            for n = 1:2:501
                z(j,i) = z(j,i) + (4*V0/pi) * (1/n) * (cosh(n*pi*x(j)/a))/(cosh(n*pi*b/a)) * sin(n*pi*y(i)/a);
            end 
    
    end
end


xlabel('X');
ylabel('Y');
zlabel('Potential');

[X, Y] = meshgrid(x,y);
mesh(X,Y,z);
