%Justin Bayer 
%Homwork 1 Problem 9
%8/29/2019


clc; clear;

t=linspace(0,0.8,100);
qO=10;
R=60;
L=9;
C=0.00005;

qt=qO.*exp(-R*t/(2*L)).*cos((sqrt((1/(L*C))-((R/(2*L))^2)))*t);


plot(t,qt)
xlabel('Time[s]')
ylabel('Capacitor Charge')
title('Capacitor Charge over time')
