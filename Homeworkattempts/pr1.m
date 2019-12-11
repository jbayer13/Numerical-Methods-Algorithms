% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
format bank
rc=12.5;
%prompt = 'Enter a height';
%h = input(prompt)

h= 20;
r1f=12.5;
r2f=(h-19)/tand(53.13010235)+12.5;


% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1


if 33 >= h && h > 19
    vc=19*pi*(rc^2);
    vf=pi*(h-19)/3*((r2f^2)+(r2f*r1f)+(r1f^2));
Vtotal=vc+vf;


elseif 19 >= h && h > 0
    vc=h*pi*rc^2;
    vf=0;
Vtotal=vc+vf;


else
    error('input a possible height')
end

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.

v=Vtotal
fprintf('The water volume is %.2f m^3.',v)
