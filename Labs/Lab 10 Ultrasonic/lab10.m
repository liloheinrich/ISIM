%%
data = csvread('lab 10 data.csv'); 

freq = data (:,2); 
mag = data (:,1);

figure
semilogx(mag, freq, 'r')

title("Lab 10 Bode Plot")
ylabel("Magnitude (dB)")
xlabel("Frequency (Hz)")
%%
clear all;
data = csvread('10.csv'); 

freq = data (:,2); 
mag = data (:,1);
m = data (:,3);

min = 4025;
max = 8000;

mag = mag(min:max);
m = m(min:max);
freq = freq(min:max);

mag = mag - mag(1);
mag = mag.*1000;

hold on;
plot(mag, m, 'b')
plot(mag, freq, 'r')

ylim([1.5,3.5]);
xlim([0, 20]);

title("Lab 10: Ultrasonic Reading, 10 feet away")
ylabel("Voltage (V)")
xlabel("Time (ms)")
legend('Input signal', 'Output signal');

hold off;

%%
clear all;
mag = [1,2,3,4,5,6,7,8,9,10,12,14,16,18,20];
freq=[1.9, 3.7, 5.5, 7.3, 9.0, 10.9, 12.7, 14.5, 16.2, 18.0, 21.6, 25.6, 28.8, 33.1, 36.0];
p = polyfit(mag, freq, 1);
p
m = mag .* p(1) + p(2);

hold on;
plot(mag, freq, 'bo')
plot(mag, m, 'r')
%ylim([1.5,3.5]);
%xlim([0, 8]);

title("Lab 10: Ultrasonic Distance Calibration")
ylabel("Time response (ms)")
xlabel("Distance (ft)")
str = ['Best fit line: ', num2str(p(1)), ' * t + ', num2str(p(2))]
legend('Data points', str)

hold off;