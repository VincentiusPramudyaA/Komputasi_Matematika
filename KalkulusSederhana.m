clc
clear 

%kalkulus sederhana 
%limit
%contoh 1
% syms x
% limit ((x^3+5)/(x^4+7))
%
%contoh 2
%limit((x-3)/(x-1),1)
%
% contoh 3
% syms x
% f = (3*x+3)/(x-3);
% g = x^2+l;
% l1 = limit (f,4)
% l2 = limit (g,4)
% ltambah = limit(f+g,4)
% lkurang = limit(f-g,4)
% lkali = limit(f*g,4)
% lbagi = (f/g,4)

%turunan
% syms x
% f = 3*t^2 + 2*t^(-2);
% diff(f,t)

%sifat turunan  
% syms x
% syms t
% 
% f = (x + 2)* (x^2 + 3)
% der1 = diff(f)
% 
% f = (t^2 + 3)*(sqrt(t) + t^3)
% der2 = diff(f)
% 
% f = (x^2 - 2*x + 1)*(3*x^3 - 3*x^2 +2)
% derr3 = diff(f)
% 
% f = (2*x^2 + 3*x)/(x^3 + 1)
% derr4 = deff(f)
% 
% f = (x^2 + 1)^17
% derr5 = diff(f)
% 
% f = (t^3 + 3*t^2 + 5*t - 9 )^(-6)
% derr = diff(f)
% syms x y;
% % definisi fungsi
% f = x^2 + 3*x*y + y^3;
% %
% %menghitung turunan parsial terhadap x
% dif_dx = gradient(f, x);
% %
% %menghitung turunan terhadap y
% dif_dy = gradient(f, y);
% %menam;pilkan hasil
% disp('turunan parsial terhadap x');
% disp(dif_dx);
% disp('turunan parsial terhadap y');
% disp(dif_dy);

%integral
%tak tentu
% syms x;
% %definisi fungsi
% f = x^2;
% %menghitung integral tak tentu
% f = int(f, x);
% %
% %menampilkan hasil
% disp('integral tak tentu  dari f(x) = x^2:');
% disp(f);
% 
% %tentu
% %definisi fungsi
% f = @(x) 2*x.^2;
% %batas integral
% a = 0;
% b = 1;
% %menghitung integral tentu
% result = integral(f, a, b);
% %menampilkan hasil
%  disp('integral dari f(x) = 2x^2 dalam batas 0 hingga 1', num2str)
