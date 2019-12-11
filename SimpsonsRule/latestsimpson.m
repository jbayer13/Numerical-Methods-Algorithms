clear; clc;

x= [140 141 142 143 144 145 146 147 148 149];
y= [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75];
%function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

ma=max(x);
mi=min(x);
Lx=length(x);
Ly=length(y);


i=1;
if Lx~=Ly
    error('The data sets are not the same length')
end
if sum(x==linspace(mi,ma,Lx))~=Lx
    error('the points arent evenly spaced')
end


tr=-1^Lx;
Lv=Lx-1;
if tr==1
   while i<Lv
       I(i)=((ma-mi)*((y(1,i)/6+(4*y(1,i+1)/6)+y(1,i+2)/6)))/Ly
      i=i+1;
   end
   I=I
   t=((y(1,i+2)+y(1,i+1))/2)*((x(1,i+2)-x(1,i+1)));
   I=sum(I);
   I=I+t 
   warning('the trapizoidal rile was used for the last interval')
elseif tr==-1
     while i<Lv
       I(i)=((ma-mi)*((y(1,i)/6+(4*y(1,i+1)/6)+y(1,i+2)/6)))/Ly
      i=i+1;
     end
     I=I
     I=sum(I)
end 

