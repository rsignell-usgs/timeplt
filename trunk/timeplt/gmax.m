function xnew=gmax(x)
% GMAX Find the maximum value of the good points.
% 
%   XNEW=GMAX(X) Just like MAX(X), except that it skips over bad points

[imax,jmax]=size(x);

for j=1:jmax
       good=find(isfinite(x(:,j)));
       if length(good)>0
          xnew(j)=max(x(good,j));
       else
          xnew(j)=NaN;
       end
end
