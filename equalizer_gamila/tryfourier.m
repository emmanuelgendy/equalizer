[y,Fs] = audioread('Marshmello ft. Bastille - Happier (Official Music Video).mp3');
fourier_transform=fft(y,length(y));
%fourier_shift=fftshift(fourier_transform);
signal=abs(fourier_transform);
signal_in_dB = 10.*log(signal);
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y); xlabel('time'); ylabel('amplitude');
figure
F = ((0:1/length(y):1-1/length(y))*Fs);
plot(F,signal_in_dB); xlabel('frequency'); ylabel('magnitude');
figure