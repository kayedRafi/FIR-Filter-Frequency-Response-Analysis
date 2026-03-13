% Calculate filter coefficient, window type and window function
[h] = filter_coefficient('bpf',8000,0,0,1000,3500,1500,2750,25);
[win_type,m] = window_type(0.5,40);
[num,h_win,w_win] = window_function(h,win_type,m);
disp(h)

figure(1)
subplot(311)
plot(w_win,20*log10(abs(h_win)))
grid;
xlabel('Frequency (Hz)');
ylabel('Magnitude Response (dB)');
subplot(312)
plot(w_win, 180*angle(h_win)/pi); grid;
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
subplot(313), 
plot(w_win,180*unwrap(angle(h_win))/pi);grid;
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');

figure(2)
subplot(1,1,1);
zplane(num,1);
[h, hp, hl] = zplane(num, 1);

poleHandles = findobj(hp, 'Type', 'line');
zeroHandles = findobj(hl, 'Type', 'line');

set([poleHandles; zeroHandles], 'LineWidth', 1);

set(poleHandles, 'Color', 'b');
set(zeroHandles, 'Color', 'r');

title('Pole Zero plot(FIR Filter)');
grid on;

% Generate the input signal
fs=8000;
t = 0:1/fs:0.1;  % Time vector from 0 to 0.1 seconds
input_signal = sin(0.06*pi*t) + 3*sin(0.14*pi*t);
B=reshape(h_win.',1,[]); %change matrix to vector

% Filter the noisy signal using the FIR filter for the signal
noisy_signal = input_signal+sqrt(0.1)*randn(size(input_signal));
filtered_signal = filter(h_win,1,noisy_signal);

% Plot the original signal, noisy signal, and filtered signal for the signal
figure(3);
subplot(3, 1, 1);
plot(t, input_signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3, 1, 2);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3, 1, 3);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');