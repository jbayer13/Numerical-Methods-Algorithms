
function [nd] = ed(mo, da, leap)
%elapseddays.m. Calculates the number of days that have passed.
%Created on 9/10/2019
%Created by Justin Bayer
%Last mdified 9/10/2019
%this function calculated the number of days that have elapsed. 

if leap==1  
    days=[31 29 31 30 31 30 31 31 30 31 30 31];
else 
    days=[31 28 31 30 31 30 31 31 30 31 30 31];
end 
nd=[sum(days(1:mo-1))+da]

end

