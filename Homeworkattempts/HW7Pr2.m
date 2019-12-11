%Justin Bayer 
%Homwork 7 Problem 2
%9/15/2019

clc; clear;
%Gives numerous decimal places for a better visualizatioin of small numbers
format long
%Assigns x to a number
x=0.00001;
% This loop divides a number an infinite amaout of times until the
% computer registers x to be so small that it thinks x 0 and gives the
% smallest number before. The break gives the number before the computer
% thinks is 0
while x>0
    x=x/2;  
  if x/2==0;
       break
  end
end
%t=This gives the smallest number the computer registers
x
