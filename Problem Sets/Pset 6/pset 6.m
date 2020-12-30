%%
data = csvread('pset 7 data 8.csv'); 
%data2 = csvread('pset 7 data 9.csv'); 

freq = data (:,2); 
%freq2 = data2 (:,2); 

mag = data (:,1);
%mag2 = data(:,1);

var = 1
var2 = 0
%mag2 = mag2(var:length(freq)-var2);
%freq2 = freq2(var:length(freq)-var2);
mag = mag(var:length(freq)-var2);
freq = freq(var:length(freq)-var2);
ylim([0,5]);

length(freq)
mag = mag - mag(1);


mean(freq)

%figure
hold on;
plot(mag, freq, 'r')
%plot(mag2, freq2, 'b');

title("Pset 7: Voltage Divider")
ylabel("Voltage (V)")
xlabel("Time (s)")

legend("No Follower", "With Follower")


%%
data = csvread('lab 6 bode plot.csv'); 

freq = data (:,2); 
mag = data (:,1);

figure
semilogx(mag, freq, 'r')

title("Lab 6 Bode Plot")
ylabel("Magnitude (dB)")
xlabel("Frequency (Hz)")