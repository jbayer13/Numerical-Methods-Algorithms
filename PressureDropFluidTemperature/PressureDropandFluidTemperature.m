clear; clc;
%I picked values for the 15W-40 oil that the engine uses and have the
%sources for them. This code finds the pressure drop and the temperature
%of the fluid depending on the length of the pipe.  
format short
%mu=[1328 582.95 287.23 155.31 91.057 57.172 38.071 26.576 19.358 14.588 11.36];
mu=1328;
%rho=[0.8916 0.8851 0.8787 0.8725 0.8663 0.8602 0.8539 0.8477 0.8414 0.8352 0.8291];
rho=0.8916;
V=10;
ID=0.05;
%L=1
L=[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1];
h=50;
q=4500;
Tsurface=644.261

%%
%This section determins the pressure drop
Re= (rho*V*ID*1000000)./mu;
ff=64./Re;
% The pressure drop is in Pascals 
PresssureDrop=2*ff.*(L/ID).*rho*V*V

%%
%This section determines the fluid temperature in Kelvin. 
A=pi*ID.*L;
Tfluid=(-(750./(A*h)))+Tsurface

