clear all;
%%
% make the Voltage vs. Time graph
data = csvread('experimentOneData.csv'); 
time = data (:,1); 
voltage = data (:,2);

hold on;
plot(time, voltage, 'b')
title("Lab 1 Pendulum Voltage vs. Time")
ylabel("Voltage (V)")
xlabel("Time (s)")
hold off;

%%
% make the Voltage vs. Angle graph
angle = [-80,-60,-40,-20,0,20,40,60,80];
volts = [0.252,0.309,0.372,0.442,0.504,0.567,0.629,0.68,0.741];

hold on;
fit_coefficients = polyfit(angle, volts, 1)
x_values = linspace(-90, 90, 10);
y_values = fit_coefficients(1)*x_values  + fit_coefficients(2);
plot(x_values, y_values, 'k')
plot(angle, volts, 'r.')

str = ['Best fit: V = ' num2str(fit_coefficients(1)) '*? + ' num2str(fit_coefficients(2))];
legend(str, 'Data points') 
title("Lab 1 Pendulum Calibration Curve")
ylabel("Voltage (V)")
xlabel("Angle (°)")
hold off;

%%
% make the Angle vs. Voltage graph
angle = [-80,-60,-40,-20,0,20,40,60,80];
volts = [0.252,0.309,0.372,0.442,0.504,0.567,0.629,0.68,0.741];

hold on;
fit_coefficients = polyfit(volts, angle, 1)
x_values = linspace(0.2, 0.8, 4);
y_values = fit_coefficients(1)*x_values  + fit_coefficients(2);
plot(x_values, y_values, 'k')
plot(volts, angle, 'r.')

str = ['Best fit: ? = ' num2str(fit_coefficients(1)) '*V + ' num2str(fit_coefficients(2))];
legend(str, 'Data points') 
title("Lab 1 Pendulum Calibration Curve")
xlabel("Voltage (V)")
ylabel("Angle (°)")
hold off;

%%
% make the Angle vs. Time graph
angle = [-80,-60,-40,-20,0,20,40,60,80];
volts = [0.252,0.309,0.372,0.442,0.504,0.567,0.629,0.68,0.741];

fit_coefficients = polyfit(volts, angle, 1)

data = csvread('experimentOneData.csv'); 
time = data (:,1); 
voltage = data (:,2);
theta = fit_coefficients(1)*voltage + fit_coefficients(2);

hold on;
plot(time, theta, 'b')
title("Lab 1 Pendulum Angle vs. Time")
ylabel("Angle (°)")
xlabel("Time (s)")
hold off;