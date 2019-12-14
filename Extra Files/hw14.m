
clear; clc;

x=[-1.1 10; -2 17.4]

y=[120; 174]



x\y

det(x)
%%

x=[0.52 -1; 1.02 -2]

y=[-9.5; -18.8]

x\y

det(x)
%%
x=[10 2 -1; -3 -5 2; 1 1 6]

y=[27; -61.5; -21.5]
x\y
%%
x=linspace(2,15,13)

y=x-1.5
%%

x=[10 2 -1; -3 -6 2; 1 1 5]

[l,u]=lu(x)

%%
x=[10 2 -1; -3 -6 2; 1 1 5]
y=[12; 18; -6]

x\y
%%
x=[8 2 1; 3 7 2; 2 3 9]
[l,u]=lu(x)
det(x)



%%
v=(y*2*9.81).^.5

plot(x,v)
xlabel('height[m]')
ylabel('velocity[m/s]')
title('Height vs Velocity')
%%
x=[15 -3 -1;-3 18 -6;-4 -1 12]
y=[4000; 1200; 2350]

x\y
inv(x)





