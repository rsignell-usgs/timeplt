% DEMO demonstrates the use of TIMEPLT and STACKLBL.
%
% create a Julian time vector
  start=[1990 11 1 0 0 0];    %Gregorian start [yyyy mm dd hh mi sc]
  stop=[1991 2 1 0 0 0];
  jd=julian(start):julian(stop);

% synthesize velocity data
  u=sin(.1*jd(:)).^2-.5;
  v=cos(.1*jd(:));

% convention: store velocity time series as complex vector:
  w=complex(u,v);

% Call TIMEPLT specifying east and north velocity components
% in the bottom panel, vector magnitude in the middle panel and a vector 
% stick plot in the top panel.  Note: each stick plot must have it's own panel

  h=timeplt(jd,[u v abs(w) w],[1 1 2 3]);
  title('Demo of TIMEPLT and STACKLBL')
 
% use STACKLBL to label each stack plot panel with title and units:

  stacklbl(h(1),'East + North velocity','m/s');
  stacklbl(h(2),'Speed','m/s');
  stacklbl(h(3),'Velocity Sticks','m/s');
