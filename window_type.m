function [win_type,M] = window_type(passband_ripple, stopband_attenuation)
f_stop1 = 1000;
f_pass1 = 1500;
f_pass2 = 2750;
f_stop2 = 3500;
fs=8000;
if (passband_ripple >= 0.7416) && (stopband_attenuation > 0 && stopband_attenuation <= 21) % Rectangular window
    win_type = 'rect';
    N1_rect = 0.9*fs/ abs(f_stop1-f_pass1);
    N2_rect = 0.9*fs/ abs(f_stop2-f_pass2);
    N_rect = check_digit(N1_rect,N2_rect);
    M = (N_rect - 1) / 2;
elseif (passband_ripple >= 0.0546) && (stopband_attenuation > 21 && stopband_attenuation <= 44) % Hanning window
    win_type = 'hann';
    N1_hann = 3.1*fs/ abs(f_stop1-f_pass1);
    N2_hann = 3.1*fs/ abs(f_stop2-f_pass2);
    N_hann = check_digit(N1_hann,N2_hann);
    M = (N_hann - 1) / 2;
elseif (passband_ripple >= 0.0194) && (stopband_attenuation > 44 && stopband_attenuation <= 53) % Hamming window
    win_type = 'hamm';
    N1_hamm = 3.3*fs/ abs(f_stop1-f_pass1);
    N2_hamm = 3.3*fs/ abs(f_stop2-f_pass2);
    N_hamm = check_digit(N1_hamm,N2_hamm);
    M = (N_hamm - 1) / 2;
elseif (passband_ripple >= 0.0017) && (stopband_attenuation > 53 && stopband_attenuation <= 74) % Blackman window
    win_type = 'black';
    N1_black = 5.5*fs/ abs(f_stop1-f_pass1);
    N2_black = 5.5*fs/ abs(f_stop2-f_pass2);
    N_black = check_digit(N1_black,N2_black);
    M = (N_black - 1) / 2;
else
    disp('Invalid parameters');
end
end


