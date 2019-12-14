%Justin Bayer 
%Homwork 7 Problem 1
%9/15/2019

clc; clear;
%Gives accuracy to 4 decimal places for a number.
format short
%Assigns eps to a number.
eps=1;
%This ass one to esp.
x=eps+1;
% This statement is the algorith that was giv3en to find the machine
% epsilon for a given epsilon.
if x<=1
    eps=2*eps;
else
    eps=eps/2;
end
%This gives the eps value
eps