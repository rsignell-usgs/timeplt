function xnew=gmin(x)
% GMIN Find the minimum value of the good points.
%
%   XNEW=GMIN(X) Just like MIN(X), except that it skips over bad points

[imax,jmax]=size(x);

for j=1:jmax
       good=find(isfinite(x(:,j)));
       if length(good)>0
          xnew(j)=min(x(good,j));
       else
          xnew(j)=NaN;
       end
end
