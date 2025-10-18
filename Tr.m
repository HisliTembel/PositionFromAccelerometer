clear
clc
close all
format compact
format longg

h = 10^-8;
err = 1;
xi = 1/12;
iter = 1;

gamma1 = 0.03;
gamma2 = 0.1;
acc_w = 5;

omega_ratio = 0.0001:0.0001:2; 
omega_ratio = omega_ratio(:);

Trans1 = 1./abs(1 + gamma1*1i - (omega_ratio).^2);
Trans2 = 1./abs(1 + gamma2*1i - (omega_ratio).^2);

figure(1)
set(gcf,'Windowstate','maximized')
semilogy(omega_ratio,Trans1,'red','LineWidth',2)
hold on
semilogy(omega_ratio,Trans2,'blue','LineWidth',2)
title('Transmissibility vs omega ratio')
xlabel('\omega_a / \omega_n')
legend('\gamma = 0.03', '\gamma = 0.1')
ylabel('Transmissibility')
set(gca,'Fontsize',24)
grid on
grid minor
print(gcf, "Trans.png", '-dpng', '-r0')