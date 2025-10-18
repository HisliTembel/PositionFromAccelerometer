clear
clc
close all
format compact
format longg

h = 10^-4;
err = 1;
xi = 1/12;
iter = 1;

gamma = 0.03;
acc_w = 5;

f = @(x) 1.01-1./abs(1 + gamma*1i - (x).^2);
df = @(x) (f(xi+h) - f(xi-h))/2/h;

while abs(err) > 10^-4
    err = f(xi) / df(xi);
    xi = xi - err; 
    iter = iter + 1;
end

