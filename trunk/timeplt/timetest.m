% TIMETEST  Test out the Gregorian Time Plotting Routines.
start=[1990 11 1 0 0 0];    %Gregorian start [yyyy mm dd hh mi sc]
stop=[1991 2 1 0 0 0];
jd=julian(start):julian(stop); 
u=sin(.1*jd(:));
v=cos(.1*jd(:));
w=u+i*v;
h=timeplt(jd,[u w],[1 2]);  % w is vector, so must supply istack ([1 2]) 
title('Sample Timeplt with bogus data')
stacklbl(h(1),'elevation','meters');
stacklbl(h(2),'wind stress','dynes/cm2');
