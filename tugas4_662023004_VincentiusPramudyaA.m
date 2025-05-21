%mesh plot
% z = peaks(25);
% 
% figure
% mesh(z)
% surf(z)
% surfl(z)
% colormap(pink)    
% shading interp  
% contour(z,16)
% colormap default  

%quiver plot
% x = -2:.2:2; 
% y = -1:.2:1;
% 
% [xx,yy] = meshgrid(x,y);
% zz = xx.*exp(-xx.^2-yy.^2);
% [px,py] = gradient(zz,.2,.2);
% 
% quiver(x,y,px,py)
% xlim([-2.5 2.5]) 

%Slices through 3-D Volumes
% x = -2:.2:2;
% y = -2:.25:2;
% z = -2:.16:2;
% 
% [x,y,z] = meshgrid(x,y,z);
% v = x.*exp(-x.^2-y.^2-z.^2);
% 
% xslice = [-1.2,.8,2];   
% yslice = 2;              
% zslice = [-2,0];         
% 
% slice(x,y,z,v,xslice,yslice,zslice)
% xlabel('x')
% ylabel('y')
% zlabel('z')

%contour plot
% [X,Y,Z] = sphere(50);
% contour3(X,Y,Z);
% [X,Y] = meshgrid(-5:0.25:5);
% Z = X.^2 + Y.^2;
% contour3(Z)
% contour3(X,Y,Z,50)
% [X,Y,Z] = peaks;
% contour3(X,Y,Z,[2 2]);
% [X,Y] = meshgrid(-2:0.0125:2);
% Z = X.*exp(-X.^2-Y.^2);
% [M,c] = contour3(X,Y,Z,30);
% c.LineWidth = 3;

%surface normal
% [X,Y,Z] = cylinder(1:10);
% surfnorm(X,Y,Z)
% [X,Y,Z] = cylinder(1:10);
% surfnorm(X,Y,Z,'EdgeColor','none')
% surf(ones(49),'EdgeColor','none');
% surf(peaks);

%waterfall plot
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% waterfall(X,Y,Z)
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% C = gradient(Z);
% waterfall(X,Y,Z,C)
% colorbar
% [X,Y] = meshgrid(-5:.5:5);
% Z = Y.*sin(X) - X.*cos(Y);
% p = waterfall(X,Y,Z)
% p.EdgeColor = 'b';
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% waterfall(X',Y',Z')

%ribbon plot
% Y = [1 2 3;
%      2 3 4;
%      3 4 5;
%      4 5 6];
% Z = Y;
% ribbon(Y,Z)
% Z = magic(5);
% Y = [-2 -1 0 1 2];
% ribbon(Y,Z,0.3)
% Z = magic(5);
% Y = [-2 -1 0 1 2];
% s = ribbon(Y,Z)

%Contour plot under mesh surface plot
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% meshc(X,Y,Z)
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% C = X.*Y;
% meshc(X,Y,Z,C)
% colorbar
% [X,Y] = meshgrid(-5:.5:5);
% Z = Y.*sin(X) - X.*cos(Y);
% sc = meshc(X,Y,Z);
% Z = peaks;
% sc = meshc(Z);

% %meshz
% [X,Y] = meshgrid(-3:.125:3);
% Z = peaks(X,Y);
% meshz(X,Y,Z)
% [X,Y] = meshgrid(-5:.5:5);
% Z = Y.*sin(X) - X.*cos(Y);
% s = meshz(X,Y,Z)

% %line plot errorbar
% x = 1:10:100;
% y = [20 30 45 40 60 65 80 75 95 90];
% err = 8*ones(size(y));
% errorbar(x,y,err)

%%3d line plot
% t = 0:pi/50:10*pi;
% st = sin(t);
% ct = cos(t);
% plot3(st,ct,t)

%% stairs
% X = linspace(0,4*pi,40);
% Y = sin(X);
% 
% figure
% stairs(Y)

%% log-log scale plot
% x = logspace(-1,2);
% y = 2.^x;
% loglog(x,y)
% grid on
% x = logspace(-1,2);
% y1 = 10.^x;
% y2 = 1./10.^x;
% loglog(x,y1,x,y2)
% grid on

%%semilogy
% x = 1:100;
% y = x.^2;
% semilogy(x,y)
% grid on
% x = 1:100;
% y1 = x.^2;
% y2 = x.^3;
% semilogy(x,y1,x,y2)
% grid on
