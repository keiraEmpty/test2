x = [2,3,7]
y=[8,42.79, 962.92]
% n=length(x);
% m=2;
% for i=1:2*m
% xsum(i)=sum(x.^(i));
% end
% a(1,1)=n;
% b(1,1)=sum(y);
% for j=2:m + 1
% a(1,j)=xsum(j-1);
% end
% 
% for i = 2:m + 1
%     for j = 1 :m + 1
%         a ( i , j ) = xsum( j + i - 2) ;
%     end
%     b(i,1)= sum(x.^(i - 1) .*y) ;
% end
% 
% p = (a\b)'
% for i = 1:m + 1
%     Pcoef(i) = p (m + 2 - i) ;
% end
P2 = polyfit(x,y,2)
yhat = polyval(P2,x);
plot(x,y,'bo',x,yhat,'r-')
xlabel X
ylabel Y
grid on
title 'Quadratic polynomial fit'

