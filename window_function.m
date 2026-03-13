function [num, h_win, w_win] = window_function(h, win_type, M)
    fs = 8000;

    w = ones(1, M);  % Assuming M is the length of h

    switch win_type
        case 'rect'
            % Rectangular window
            % No changes needed for rectangular window
        case 'hann'
            % Hanning window
            for n = 0:M-1
                w(n + 1) = 0.5 + 0.5 * (1 - cos(2 * pi * n / M));
            end
        case 'hamm'
            % Hamming window
            for n = 0:M-1
                w(n + 1) = 0.54 + 0.46 * cos(2 * pi * n / M);
            end
        case 'black'
            % Blackman window
            for n = 0:M-1
                w(n + 1) = 0.42 + 0.5 * cos(2 * pi * n / M) + 0.08 * cos(4 * pi * n / M);
            end
        otherwise
            error('Unsupported window type');
    end

    num = h .* w;
    [h_win, w_win] = freqz(num, [1], 512, fs);
end
