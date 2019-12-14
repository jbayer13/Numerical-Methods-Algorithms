clear; clc;

x= [140 141 142 143 144 145 146 147 148 149];
y= [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75];


max=max(x);
min=min(x);
Lx=length(x);
Ly=length(y);

b=x(1,1);
n=x(1,2);
m=x(1,3);

I1=n-b;
I2=m-n;
i=1;
if Lx~=Ly
    error('The data sets are not the same length')
end
%if sum(x==linspace(min,max,Lx))~=min
%    error('the points arent evenly spaced')
%end


tr=-1^Lx;
Lv=Lx-1;
if tr==1
   while i<Lv
       I(i)=((I1/2)/3)*(y(1,i)+(4*y(1,i+1))+y(1,i+2));
      i=i+1;
   end
   t=((y(1,i+2)+y(1,i))/2)*((x(1,i+2)-x(1,i+1)));
   I=sum(I);
   I=I+t 
   warning('the trapizoidal rile was used for the last interval')
elseif tr==-1
     while i<Lv
       I(i)=((I1/2)/3)*(y(1,i)+(4*y(1,i+1))+y(1,i+2));
      i=i+1;
     end
   I=sum(I)
end 



