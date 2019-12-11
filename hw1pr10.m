%Justin Bayer 
%Homwork 1 Problem 10
%8/29/2019


clc; clear;

z=linspace(-5,5);
fz=(1/(sqrt(2*pi))).*exp((-1*z.^2)/2)

plot(z,fz)


xlabel('z')
ylabel('Frequency')
title('z vs. Frequency')