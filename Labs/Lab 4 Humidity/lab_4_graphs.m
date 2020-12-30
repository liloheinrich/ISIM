%%
cap = [100,120,150,180,220];
volts = [0.4843, 0.4817, 0.4785, 0.4755, 0.4713];

hold on;
fit_coefficients = polyfit(cap, volts, 1)
y_values = fit_coefficients(1)*cap  + fit_coefficients(2);
plot(cap, y_values, 'k')
plot(cap, volts, 'rO')

str = ['Best fit: V = ' num2str(fit_coefficients(1)) '*C + ' num2str(fit_coefficients(2))];
legend(str, 'Data points') 
title("Lab 4 RC Circuit Calibration Curve")
ylabel("Voltage (V)")
xlabel("Capacitance (pF)")
hold off;

%%
data = csvread('Lab4Data1.csv'); 
time = data (:,1); 
voltage = data (:,3);
time = time (4095:6590);
voltage = voltage(4095:6590);
time = time - time(1);
time = time * 1000000;
%t = linspace(0,0.00005,10);
theoretical = 1-exp(-time./1.77966);

hold on;
title("Lab 4 Voltage Actual vs. Theoretical")
ylabel("Voltage (V)")
xlabel("Time (us)")

plot(time, voltage, 'b')
plot(time, theoretical, 'k')

legend("Actual", "Theoretical") 
hold off;