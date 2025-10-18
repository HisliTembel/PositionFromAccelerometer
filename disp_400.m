clear
clc
close all
format compact
format longg

load('data_400.mat')

a2_fix_400_disp(:,2) = a2_fix_400_disp(:,2).*my_tukeywin(length(a2_fix_400_disp(:,2)),0.02);
a2_in_400_disp(:,2) = a2_in_400_disp(:,2).*my_tukeywin(length(a2_in_400_disp(:,2)),0.02);
a2_out_400_disp(:,2) = a2_out_400_disp(:,2).*my_tukeywin(length(a2_out_400_disp(:,2)),0.02);

a2_fix_400_disp(:,2) = a2_fix_400_disp(:,2) - mean(a2_fix_400_disp(:,2));
a2_in_400_disp(:,2) = a2_in_400_disp(:,2) - mean(a2_in_400_disp(:,2));
a2_out_400_disp(:,2) = a2_out_400_disp(:,2) - mean(a2_out_400_disp(:,2));

[my_a2_fix_400_disp,my_u2_fix_400_disp] = new_double_integrate(a2_fix_400_disp(:,1),a2_fix_400_disp(:,2),5);
[my_a2_in_400_disp,my_u2_in_400_disp] = new_double_integrate(a2_in_400_disp(:,1),a2_in_400_disp(:,2),5);
[my_a2_out_400_disp,my_u2_out_400_disp] = new_double_integrate(a2_out_400_disp(:,1),a2_out_400_disp(:,2),5);

[my_rel_a2_fixout_400_disp,my_rel_u2_fixout_400_disp] = new_double_integrate(a2_out_400_disp(:,1),a2_out_400_disp(:,2)-a2_fix_400_disp(:,2),5);
[my_rel_a2_inout_400_disp,my_rel_u2_inout_400_disp] = new_double_integrate(a2_out_400_disp(:,1),a2_out_400_disp(:,2)-a2_in_400_disp(:,2),5);

figure(1)
set(gcf,'Windowstate','maximized')
plot(a2_fix_400_disp(:,1),a2_fix_400_disp(:,2),'black')
hold on
plot(a2_fix_400_disp(:,1),my_a2_fix_400_disp,'red')
xlabel('Time [s]')
ylabel('Acceleration [mm/s²]')
title('Fixed')
grid minor
legend('Analysis','Calculated')

figure(2)
set(gcf,'Windowstate','maximized')
plot(a2_in_400_disp(:,1),a2_in_400_disp(:,2),'black')
hold on
plot(a2_in_400_disp(:,1),my_a2_in_400_disp,'red')
xlabel('Time [s]')
ylabel('Acceleration [mm/s²]')
title('Input')
grid minor
legend('Analysis','Calculated')

figure(3)
set(gcf,'Windowstate','maximized')
plot(a2_out_400_disp(:,1),a2_out_400_disp(:,2),'black')
hold on
plot(a2_out_400_disp(:,1),my_a2_out_400_disp,'red')
xlabel('Time [s]')
ylabel('Acceleration [mm/s²]')
title('Output')
grid minor
legend('Analysis','Calculated')

figure(4)
set(gcf,'Windowstate','maximized')
plot(u2_fix_400(:,1),u2_fix_400(:,2),'black')
hold on
plot(u2_fix_400(:,1),my_u2_fix_400_disp,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('Fixed')
grid minor
legend('Analysis','Calculated')

figure(5)
set(gcf,'Windowstate','maximized')
plot(u2_in_400(:,1),u2_in_400(:,2),'black')
hold on
plot(u2_in_400(:,1),my_u2_in_400_disp,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('Input')
grid minor
legend('Analysis','Calculated')

figure(6)
set(gcf,'Windowstate','maximized')
plot(u2_out_400(:,1),u2_out_400(:,2),'black')
hold on
plot(u2_out_400(:,1),my_u2_out_400_disp,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('Output')
grid minor
legend('Analysis','Calculated')

figure(7)
set(gcf,'Windowstate','maximized')
plot(a2_out_400_disp(:,1),a2_out_400_disp(:,2)-a2_fix_400_disp(:,2),'black')
hold on
plot(a2_out_400_disp(:,1),my_rel_a2_fixout_400_disp,'red')
xlabel('Time [s]')
ylabel('Acceleration [mm/s²]')
title('Fixed - Output')
grid minor
legend('Analysis','Calculated')

figure(8)
set(gcf,'Windowstate','maximized')
plot(a2_out_400_disp(:,1),a2_out_400_disp(:,2)-a2_in_400_disp(:,2),'black')
hold on
plot(a2_out_400_disp(:,1),my_rel_a2_inout_400_disp,'red')
xlabel('Time [s]')
ylabel('Acceleration [mm/s²]')
title('Input - Output')
grid minor
legend('Analysis','Calculated')

figure(9)
set(gcf,'Windowstate','maximized')
plot(u2_out_400(:,1),u2_out_400(:,2)-u2_fix_400(:,2),'black')
hold on
plot(u2_out_400(:,1),my_rel_u2_fixout_400_disp,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('Fixed - Output')
grid minor
legend('Analysis','Calculated')

figure(10)
set(gcf,'Windowstate','maximized')
plot(u2_out_400(:,1),u2_out_400(:,2)-u2_in_400(:,2),'black')
hold on
plot(u2_out_400(:,1),my_rel_u2_inout_400_disp,'red')
xlabel('Time [s]')
ylabel('Position [mm]')
title('Input - Output')
grid minor
legend('Analysis','Calculated')
