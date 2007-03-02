function h=stacklbl(axhandle,titl,ylab,x,y);
% STACKLBL Label stack plot axes with title and y-axis label. 
%
%   STACKLBL(axhandle,titl,ylab,[x,y]);
%   labels the yaxis and titles a stack plot panel
%   created by timeplt.m.  Uses the same font that timeplt
%   used on the x axis.
%        axhandle= the handle of the axes you wish to label
%        titl = string for title
%        ylab = string for ylabel
%        x,y = location of title in normalized coordinates (0.05,.85) by default
if(~exist('x'))
 x=.05;
end
if(~exist('y'))
 y=.85;
end
axes(axhandle);...
fsiz=get(axhandle,'fontsize');...
ylabel(ylab);
h=text(x,y,titl,'units','norm','fontsize',fsiz);
