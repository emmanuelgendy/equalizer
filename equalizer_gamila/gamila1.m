
clear all;
[y,Fs] = audioread('only_you.mp3'); %%y --> samples of the signal (matrix of no of samples as rows and 2 columns)
%%sound(y,Fs); %% used to play the song
disp(Fs); %% prints f sample which is 44100 for mp3 I think
fourier_transform=fft(y);%% gives contribution (amp) of each freq component
fourier_shift=fftshift(fourier_transform); 
signal=abs(fourier_shift); %% to be able to plot
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;
plot(t,signal); xlabel('time'); ylabel('Amplitude'); %% plots fourier result vs t
figure
plot(t,y); %%plots the real signal (soundcloud)
%%plot(psd(spectrum.PERIODGRAM,y,'Fs',Fs,'NFFT',length(y)));

