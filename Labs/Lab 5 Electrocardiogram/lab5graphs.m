%%
data = csvread('lab5 data heartbeat.csv'); 
time = data (:,1); 
voltage = data (:,2);
%time = time (4095:6590);
%voltage = voltage(4095:6590);
time = time - time(1);
%time = time * 1000000;
%t = linspace(0,0.00005,10);
%theoretical = 1-exp(-time./1.77966);

hold on;
%ylim([-0.25 0.5])
title("Lab 5 Electrocardiogram Heartbeat")
ylabel("Voltage (V)")
xlabel("Time (s)")

plot(time, voltage, 'b')

%legend("Actual", "Theoretical") 
hold off;

%%
data = csvread('lab5 data !.csv'); 
freq = data (:,1); 
voltage = data (:,2);
%time = time (4095:6590);
%voltage = voltage(4095:6590);
%fre = time - time(1);
%time = time * 1000000;
%t = linspace(0,0.00005,10);
%theoretical = 1-exp(-time./1.77966);

hold on;
ylim([-100 40])
title("Lab 5 Electrocardiogram Bode Plot")
ylabel("Voltage (V)")
xlabel("Frequency (Hz)")
%freq=log(freq)

%plot(freq, voltage, 'b')

figure
semilogx(freq, voltage)

%legend("Actual", "Theoretical") 
hold off;