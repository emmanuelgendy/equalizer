[song_samples,Fs] = audioread('Matt Maeson - Tribulation (Stripper).mp3');
dt = 1/Fs;
t = 0:dt:(length(song_samples)*dt)-dt;
plot(t,song_samples);
figure
%plot signal
fourier_transform=fft(song_samples);%% gives contribution (amp) of each freq component
%fourier_shift=fftshift(fourier_transform); 
%fourier_magnitude=abs(fourier_transform);
tt=fourier_transform;
L=length(song_samples);
%L2=L/2;
f= Fs*(0:L-1)/L; 
%awel wahed
handles.slider_1=db2mag(handles.slider1_gain);
handles.First1_frequency_index=find(handles.floor_frequency==16,1,'first');
handles.First1_frequency_index=find(handles.floor_frequency==47,1,'last');
fourier_transform(First1_frequency_index:Last1_frequency_index,:)=handles.slider_1.*fourier_transform(handles.First1_frequency_index:handles.Last1_frequency_index,:);
%tany wahed
plot(f,fourier_transform);
figure
floor_frequency=floor(f);
First1_frequency_index=find(floor_frequency==16,1,'first');
Last1_frequency_index=find(floor_frequency==47,1,'last');
fourier_transform(First1_frequency_index:Last1_frequency_index,:)=12.*fourier_transform(First1_frequency_index:Last1_frequency_index,:);
plot(f,fourier_transform);
figure
%awl slider
% First1_frequency_index=find(floor_frequency==16,1,'first');
% Last1_frequency_index=find(floor_frequency==47,1,'last');
% %tane slider
% First2_frequency_index=find(floor_frequency==48,1,'first');
% Last2_frequency_index=find(floor_frequency==93,1,'last');
% %talet slider
% First3_frequency_index=find(floor_frequency==94,1,'first');
% Last3_frequency_index=find(floor_frequency==187,1,'last');
% %rabe3 slider
% First4_frequency_index=find(floor_frequency==188,1,'first');
% Last4_frequency_index=find(floor_frequency==375,1,'last');
% %khames slider
% First5_frequency_index=find(floor_frequency==376,1,'first');
% Last5_frequency_index=find(floor_frequency==750,1,'last');
% %sades slider
% First6_frequency_index=find(floor_frequency==751,1,'first');
% Last6_frequency_index=find(floor_frequency==1500,1,'last');
% %sabe3 slider
% First7_frequency_index=find(floor_frequency==1501,1,'first');
% Last7_frequency_index=find(floor_frequency==3000,1,'last');
% %tamen slider
% First8_frequency_index=find(floor_frequency==3001,1,'first');
% Last8_frequency_index=find(floor_frequency==6000,1,'last');
% %tase3 slider
% First9_frequency_index=find(floor_frequency==6001,1,'first');
% Last9_frequency_index=find(floor_frequency==12000,1,'last');
% %3asher slider
% First10_frequency_index=find(floor_frequency==12001,1,'first');
% Last10_frequency_index=find(floor_frequency==17000,1,'last');
% 
 song_back=ifft(fourier_transform);
 song_back=real(song_back);
 plot(t,song_back);
 sound(song_back,Fs);