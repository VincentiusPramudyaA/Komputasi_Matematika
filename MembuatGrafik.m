%latihan membuat grafik
% x = [-10:1:10];
% y = x.^2;
% plot(x,y);

%plot D
% x = 0:pi/100:2*pi;
% y = sin(x);
% plot(x,y);

% x = linspace(-2*pi,2*pi);
% y1 = sin(x);
% y2 = cos(x);
% 
% figure
% plot(x,y1,x,y2)

%equal maxima
% x = [0:0.001:1];
% y = (sin(5*pi*x)).^6;
% plot(x,y,'*y');

%Decreasing
% x = [0:0.001:1];
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot(x,y,'*m');

%second minima
% x = -4:0.1:4;
% y = -4:0.1:4;
% [X,Y] = meshgrid(x,y);
% f = (0.5*(X.^4-16*X.^2+5*X)+0.5*(Y.^4-16*Y.^2+5*Y));
% figure(1)
% plot3(X,Y,f);
% figure(2)
% contour(X,Y,f)
% figure(3)
% contour3(X,Y,f)
% figure(4)
% surf(X,Y,f)
% figure(5)
% surfc(X,Y,f)
% figure(6)
% meshc(X,Y,f)

% six ham
x = -1.9:0.1:1.9;
y = -1.1:0.1:1.1;
[X,Y] = meshgrid(x,y);
f = (4-2.1*X.^2+X.^4/3).*X.^2+X.*Y+4*(-1+Y.^2).*Y.^2;
figure(1)
plot3(X,Y,f);
figure(2)
contour(X,Y,f)
figure(3)
contour3(X,Y,f)
figure(4)
surf(X,Y,f)
figure(5)
surfc(X,Y,f)
figure(6)
meshc(X,Y,f)

