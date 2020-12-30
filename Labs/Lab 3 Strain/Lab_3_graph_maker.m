clear all;
%%
% make the Voltage vs. Time graph
data = csvread('Lab_2_coffee_1.csv'); 
time = data (:,1); 
time = time - time(1);
voltage = data (:,2);
data2 = csvread('Lab_2_coffee_2.csv'); 
time2 = data2 (:,1); 
time2 = time2 - time2(1);
voltage2 = data2 (:,2);

hold on;
plot(time, voltage, 'r')
plot(time2, voltage2, 'b')
legend("Coffee #1", "Coffee #2")
title("Lab 2 Voltage vs. Time for both Coffees")
ylabel("Voltage (V)")
xlabel("Time (s)")
hold off;

%%
% make the Tau graph
data = csvread('Lab_2_coffee_2.csv'); 
time = data (:,1); 
voltage = data (:,2);
%[val, idx] = min(voltage)
time = time (600:length(voltage));
voltage = voltage(600:length(voltage));
time = time - time(1);
temp = 3528 ./ (4.93118 + log(voltage*1000 ./(5.18 - voltage))) -273.15 -22.0;
ratio = temp ./ temp(1);

hold on;
title("Lab 2 Tau fit for (Temperature - 22*)/start temp vs. Time for Coffee 2")
ylabel("(Temperature - 22*)/start temp (C)")
xlabel("Time (s)")

plot(time, temp, 'b')

legend("Coffee 2") 
hold off;


%%
% make the Temperature vs. Time graph
data = csvread('Lab_2_coffee_2.csv'); 
time = data (:,1); 
time = time - time(1);
voltage = data (:,2);
temp = 3528 ./(4.93118 + log(voltage*1000 ./(5.18 - voltage))) -273.15;
data1 = csvread('Lab_2_coffee_1.csv'); 
time1 = data1 (:,1); 
time1 = time1 - time1(1);
voltage1 = data1 (:,2);
temp1 = 3528 ./(4.93118 + log(voltage1*1000 ./(5.18 - voltage1))) -273.15;

hold on;
plot(time1, temp1, 'r')
plot(time, temp, 'b')
legend("Coffee #1", "Coffee #2")
title("Lab 2 Temperature vs. Time for both Coffees")
ylabel("Temperature (C)")
xlabel("Time (s)")
hold off;

%%
masses = [11.1, 37.8, 66.0, 114.4, 184.6, 261.1]
voltages = [0.0054, 0.0105, 0.0220, 0.0337, 0.0541, 0.0665]
hold on;
fit_coefficients = polyfit(masses, voltages, 1)
x_values = linspace(0, 300, 10);
y_values = fit_coefficients(1)*x_values  + fit_coefficients(2);
plot(x_values, y_values, 'k')

plot(masses,voltages,'o')
str = ['Best fit: V(m) = ' num2str(fit_coefficients(1)) ' * m + ' num2str(fit_coefficients(2))];
legend(str, 'Data points') 

xlabel('Mass Added (g)')
ylabel('Voltage (V)')

title('Measured Voltage by Mass')
hold off;