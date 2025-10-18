clear
clc
close all
format compact
format longg

E = 200000; % [N/mm^2]
b = 50; % [mm]
h = 10; % [mm]
I = 1/12*b*h^3; % [mm^4]
ro = 7800*10^-9; % [kg/mm^3]
A = b*h; % [mm^2]
L = [200 320 400 570 900]; % [mm]

omega1 = (1.875./L).^2*sqrt(E*I/ro/A*1000)/2/pi
omega2 = (4.694./L).^2*sqrt(E*I/ro/A*1000)/2/pi;
omega3 = (7.855./L).^2*sqrt(E*I/ro/A*1000)/2/pi;

input = 2*(rand(1999,1)-0.5);
time = 0:0.001:2;
input = input - mean(input);

disp = [time',[0;input;0]]

input2 = zeros(length(time),1);
input2(1:12) = (0:0.001:0.011)/0.011*30*9.81

shock_input = [time',input2]

acc_input_no_mean = [disp(:,1),disp(:,2)]
