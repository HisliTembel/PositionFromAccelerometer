function [my_acc,my_pos] = new_double_integrate(time,accel,low_freq)
N = length(time);             % Number of samples
dt = time(2)-time(1);         % Time step
fs = 1/dt;                    % Sampling frequency [Hz]
dw = fs/N;                    % Frequency resolution [Hz]                                      
freq = dw:dw:fs/2;            % Frequency vector - 0 is omitted.
freq = freq(:);
N2 = length(freq);
% To find spectral coefficients, fft is taken
FFT = fft(accel);
FFT_half = FFT(2:N2+1)*2/N;

acc_c = real(FFT_half);
acc_s = -imag(FFT_half);

divider = freq.^2*4*pi^2;
pos_c = -acc_c./divider;
pos_s = -acc_s./divider;

my_acc = 0;
my_pos = 0;

for i = 1:N2
    if freq(i) >= low_freq
        my_acc = my_acc + acc_c(i)*cos(freq(i)*2*pi*time) + acc_s(i)*sin(freq(i)*2*pi*time);
        my_pos = my_pos + pos_c(i)*cos(freq(i)*2*pi*time) + pos_s(i)*sin(freq(i)*2*pi*time);
    end
end

end

