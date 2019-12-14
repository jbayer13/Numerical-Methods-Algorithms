function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
max=max(x)
min=min(x)
Lx=length(x)
Ly=length(y)

b=x(1,1)
n=x(1,2)
m=x(1,3)

I1=n-b
I2=m-n
i=1
if Lx~=Ly
    error('The data sets are not the same length')
end
if I1~=I2
    error('the points arent evenly spaced')
end


tr=-1^Lx


Lv=Lx-2
if tr=1
   while i<Lv
       I(i)=((I1/2)/3)*(y(1,i)+(4*y(1,i+1))+y(1,i+2)
      i=i+1
   end
  
    
end  
   
end