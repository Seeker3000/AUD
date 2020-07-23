mode(0)
clc, clear
descriptions = {"Timing"};
colors = {'g-','b-','m-'};
T1 = dlmread('Arduino_Uno_Data_Compass_20ms_I.csv');
T2 = dlmread('Arduino_Uno_Data_Compass_20ms_II.csv');
T3 = dlmread('Arduino_Uno_Data_Compass_20ms_III.csv');
data_valuesST1 = T1(2:end); 
data_valuesST2 = T2(2:end);
data_valuesST3 = T3(2:end);
z=10.5;
f = figure();
 plot(T1(:,1)/6000,T1(:,2),'b-',"linewidth", 3, T2(:,1)/6000,T2(:,2),'g-', "linewidth", 3, T3(:,1)/6000,T3(:,2),'r-',"linewidth", 3);
 set (gca, "xminorgrid", "on");
 set (gca, "yminorgrid", "on");
 title("Data from HDMM01")
 h = legend("Compass_20ms_I", "Compass_20ms_II", "Compass_20ms_III");
 xlabel("Time [min]");
 ylabel("Compass value");
