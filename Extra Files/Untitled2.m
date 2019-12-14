clc;clear;
testFunc = @(x) (3*x.^2)-27; % the root for this is pretty clearly x=0

% now lets test the function, using default value for es
x_left = 2;
x_right = 4;
[root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right)