clear
clc
close all
format compact
format longg

load('random_320.mat')
load('random_400.mat')
load('random_570.mat')
load('random_900.mat')

n = length(a2_fix_320);

a2_fix_320(:,2) = a2_fix_320(:,2).*my_tukeywin(length(a2_fix_320(:,2)),0.02);
a2_in_320(:,2) = a2_in_320(:,2).*my_tukeywin(length(a2_in_320(:,2)),0.02);
a2_out_320(:,2) = a2_out_320(:,2).*my_tukeywin(length(a2_out_320(:,2)),0.02);
a2_fix_320(:,2) = a2_fix_320(:,2) - mean(a2_fix_320(:,2));
a2_in_320(:,2) = a2_in_320(:,2) - mean(a2_in_320(:,2));
a2_out_320(:,2) = a2_out_320(:,2) - mean(a2_out_320(:,2));
a2_outfix_320 = a2_out_320(:,2)-a2_fix_320(:,2);
a2_outin_320 = a2_out_320(:,2)-a2_in_320(:,2);
u2_outfix_320 = u2_out_320(:,2)-u2_fix_320(:,2);
u2_outin_320 = u2_out_320(:,2)-u2_in_320(:,2);
[my_rel_a2_fixout_320,my_rel_u2_fixout_320] = new_double_integrate(a2_out_320(:,1),a2_outfix_320,5);
[my_rel_a2_inout_320,my_rel_u2_inout_320] = new_double_integrate(a2_out_320(:,1),a2_outin_320,5);

a2_fix_400(:,2) = a2_fix_400(:,2).*my_tukeywin(length(a2_fix_400(:,2)),0.02);
a2_in_400(:,2) = a2_in_400(:,2).*my_tukeywin(length(a2_in_400(:,2)),0.02);
a2_out_400(:,2) = a2_out_400(:,2).*my_tukeywin(length(a2_out_400(:,2)),0.02);
a2_fix_400(:,2) = a2_fix_400(:,2) - mean(a2_fix_400(:,2));
a2_in_400(:,2) = a2_in_400(:,2) - mean(a2_in_400(:,2));
a2_out_400(:,2) = a2_out_400(:,2) - mean(a2_out_400(:,2));
a2_outfix_400 = a2_out_400(:,2)-a2_fix_400(:,2);
a2_outin_400 = a2_out_400(:,2)-a2_in_400(:,2);
u2_outfix_400 = u2_out_400(:,2)-u2_fix_400(:,2);
u2_outin_400 = u2_out_400(:,2)-u2_in_400(:,2);
[my_rel_a2_fixout_400,my_rel_u2_fixout_400] = new_double_integrate(a2_out_400(:,1),a2_outfix_400,5);
[my_rel_a2_inout_400,my_rel_u2_inout_400] = new_double_integrate(a2_out_400(:,1),a2_outin_400,5);

a2_fix_570(:,2) = a2_fix_570(:,2).*my_tukeywin(length(a2_fix_570(:,2)),0.02);
a2_in_570(:,2) = a2_in_570(:,2).*my_tukeywin(length(a2_in_570(:,2)),0.02);
a2_out_570(:,2) = a2_out_570(:,2).*my_tukeywin(length(a2_out_570(:,2)),0.02);
a2_fix_570(:,2) = a2_fix_570(:,2) - mean(a2_fix_570(:,2));
a2_in_570(:,2) = a2_in_570(:,2) - mean(a2_in_570(:,2));
a2_out_570(:,2) = a2_out_570(:,2) - mean(a2_out_570(:,2));
a2_outfix_570 = a2_out_570(:,2)-a2_fix_570(:,2);
a2_outin_570 = a2_out_570(:,2)-a2_in_570(:,2);
u2_outfix_570 = u2_out_570(:,2)-u2_fix_570(:,2);
u2_outin_570 = u2_out_570(:,2)-u2_in_570(:,2);
[my_rel_a2_fixout_570,my_rel_u2_fixout_570] = new_double_integrate(a2_out_570(:,1),a2_outfix_570,5);
[my_rel_a2_inout_570,my_rel_u2_inout_570] = new_double_integrate(a2_out_570(:,1),a2_outin_570,5);

a2_fix_900(:,2) = a2_fix_900(:,2).*my_tukeywin(length(a2_fix_900(:,2)),0.02);
a2_in_900(:,2) = a2_in_900(:,2).*my_tukeywin(length(a2_in_900(:,2)),0.02);
a2_out_900(:,2) = a2_out_900(:,2).*my_tukeywin(length(a2_out_900(:,2)),0.02);
a2_fix_900(:,2) = a2_fix_900(:,2) - mean(a2_fix_900(:,2));
a2_in_900(:,2) = a2_in_900(:,2) - mean(a2_in_900(:,2));
a2_out_900(:,2) = a2_out_900(:,2) - mean(a2_out_900(:,2));
a2_outfix_900 = a2_out_900(:,2)-a2_fix_900(:,2);
a2_outin_900 = a2_out_900(:,2)-a2_in_900(:,2);
u2_outfix_900 = u2_out_900(:,2)-u2_fix_900(:,2);
u2_outin_900 = u2_out_900(:,2)-u2_in_900(:,2);
[my_rel_a2_fixout_900,my_rel_u2_fixout_900] = new_double_integrate(a2_out_900(:,1),a2_outfix_900,5);
[my_rel_a2_inout_900,my_rel_u2_inout_900] = new_double_integrate(a2_out_900(:,1),a2_outin_900,5);

% error_320 = abs((u2_outfix_320-my_rel_u2_fixout_320)/max(abs(u2_outfix_320))*100);
% error_400 = abs((u2_outfix_400-my_rel_u2_fixout_400)/max(abs(u2_outfix_400))*100);
% error_570 = abs((u2_outfix_570-my_rel_u2_fixout_570)/max(abs(u2_outfix_570))*100);
% error_900 = abs((u2_outfix_900-my_rel_u2_fixout_900)/abs(max(u2_outfix_900))*100);

% CE_320 = max(error_320(ceil(0.02*n):floor(n*0.99)));
% CE_400 = max(error_400(ceil(0.02*n):floor(n*0.99)));
% CE_570 = max(error_570(ceil(0.02*n):floor(n*0.99)));
% CE_900 = max(error_900(ceil(0.01*n):floor(n*0.99)));

figure(6)
set(gcf,'WindowState','maximized')
sgtitle("Relative Displacements between Input and Output")

subplot(2,2,1)
plot(u2_out_320(:,1),u2_outfix_320,'black')
hold on
plot(u2_out_320(:,1),my_rel_u2_fixout_320,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('\omega_n = 80 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')


subplot(2,2,2)
plot(u2_out_400(:,1),u2_outfix_400,'black')
hold on
plot(u2_out_400(:,1),my_rel_u2_fixout_400,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('\omega_n = 51 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')

subplot(2,2,3)
plot(u2_out_570(:,1),u2_outfix_570,'black')
hold on
plot(u2_out_570(:,1),my_rel_u2_fixout_570,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('\omega_n = 25 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')

subplot(2,2,4)
plot(u2_out_900(:,1),u2_outfix_900,'black')
hold on
plot(u2_out_900(:,1),my_rel_u2_fixout_900,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('\omega_n = 10 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')
print(gcf, "results.png", '-dpng', '-r0')

figure(7)
set(gcf,'WindowState','maximized')
sgtitle("Relative Displacements - First 0.5 seconds")

subplot(2,2,1)
plot(u2_out_320(:,1),u2_outfix_320,'black')
hold on
plot(u2_out_320(:,1),my_rel_u2_fixout_320,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
xlim ([0 0.5])
title('\omega_n = 80 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')

subplot(2,2,2)
plot(u2_out_400(:,1),u2_outfix_400,'black')
hold on
plot(u2_out_400(:,1),my_rel_u2_fixout_400,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
xlim ([0 0.5])
title('\omega_n = 51 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')

subplot(2,2,3)
plot(u2_out_570(:,1),u2_outfix_570,'black')
hold on
plot(u2_out_570(:,1),my_rel_u2_fixout_570,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
xlim ([0 0.5])
title('\omega_n = 25 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')

subplot(2,2,4)
plot(u2_out_900(:,1),u2_outfix_900,'black')
hold on
plot(u2_out_900(:,1),my_rel_u2_fixout_900,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
xlim ([0 0.5])
title('\omega_n = 10 Hz','Fontsize',16)
grid minor
legend('Analysis','Calculated','Location','best')
print(gcf, "results_zoomed.png", '-dpng', '-r0')