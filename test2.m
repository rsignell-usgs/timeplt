start=[1990 11 1 0 0 0];    %Gregorian start [yyyy mm dd hh mi sc]
stop=[1991 2 1 0 0 0];
jd=julian(start):julian(stop);
u=sin(.1*jd(:));
v=cos(.1*jd(:));
w=u+i*v;
h=timeplt(jd,w);
