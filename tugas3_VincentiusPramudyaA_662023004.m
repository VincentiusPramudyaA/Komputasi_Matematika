 clc;
 clear;

% % metode jacobi
% % Tebakan awal
% x1 = 0;
% x2 = 0;
% x3 = 0;
% x4 = 0;
% 
% % Parameter iterasi
% maks_iter = 50;
% toleransi = 1e-6;
% galat = Inf;
% k = 1;
% 
% fprintf('Iterasi\t\tx1\t\tx2\t\tx3\t\tx4\t\tError\n');
% 
% while k <= maks_iter && galat > toleransi
%     % Simpan nilai lama
%     x1_lama = x1;
%     x2_lama = x2;
%     x3_lama = x3;
%     x4_lama = x4;
% 
%     % Iterasi Jacobi (dari rumus langsung)
%     x1 = (1/10) * (6 + x2_lama - 2*x3_lama);
%     x2 = (1/11) * (25 + x1_lama + x3_lama - 3*x4_lama);
%     x3 = (1/10) * (-11 - 2*x1_lama + x2_lama + x4_lama);
%     x4 = (1/8) * (15 - 3*x2_lama + x3_lama);
% 
%     % Hitung error maksimum antar variabel
%     error = max([abs(x1 - x1_lama), abs(x2 - x2_lama), abs(x3 - x3_lama), abs(x4 - x4_lama)]);
% 
%     % hasil iterasi
%     fprintf('%3d\t\t%.5f\t%.5f\t%.5f\t%.5f\t%.2e\n', ...
%         k, x1, x2, x3, x4, error);
% 
%     k = k + 1;
% end
% 
% fprintf('\nSolusi akhir setelah :\n', k-1);
% fprintf('x1 = %.6f\nx2 = %.6f\nx3 = %.6f\nx4 = %.6f\n', x1, x2, x3, x4);
% % % % % 
%metode seidel
% Tebakan awal
% x1 = 0;
% x2 = 0;
% x3 = 0;
% x4 = 0;
% 
% % Parameter iterasi
% maks_iter = 50;
% toleransi = 1e-6;
% error = Inf;
% k = 1;
% 
% fprintf('Iterasi\t\tx1\t\tx2\t\tx3\t\tx4\t\tError\n');
% 
% while k <= maks_iter && error > toleransi
%     % Simpan nilai lama
%     x1_lama = x1;
%     x2_lama = x2;
%     x3_lama = x3;
%     x4_lama = x4;
% 
%     % Iterasi Gauss-Seidel (pakai nilai terbaru langsung)
%     x1 = (1/10)*(6 + x2 - 2*x3);
%     x2 = (1/11)*(25 + x1 + x3 - 3*x4);
%     x3 = (1/10)*(-11 - 2*x1 + x2 + x4);
%     x4 = (1/8)*(15 - 3*x2 + x3);
% 
%     % Hitung error maksimum dari perubahan variabel
%     error = max([abs(x1 - x1_lama), abs(x2 - x2_lama), abs(x3 - x3_lama), abs(x4 - x4_lama)]);
% 
%     % Cetak iterasi
%     fprintf('%3d\t\t%.5f\t%.5f\t%.5f\t%.5f\t%.2e\n',...
%         k, x1, x2, x3, x4, error);
% 
%     k = k + 1;
% end
% 
% fprintf('\nSolusi akhir setelah %d iterasi:\n', k-1);
% fprintf('x1 = %.6f\nx2 = %.6f\nx3 = %.6f\nx4 = %.6f\n', x1, x2, x3, x4);
% % % % 
% % % % %metode numerik
% % % % 
% % % % Definisi fungsi f(x)
% % % f = @(x) 2*x.^3;   % Misal f(x) = 2x^3
% % % 
% % % % Batas integrasi dan jumlah partisi
% % %  a = 0;
% % %  b = 1;
% % %  n = 10;            % Jumlah subinterval
% % %  h = (b - a)/n;     % Panjang tiap subinterval
% % %  c = 0;
% % %  d = 1;
% % % % Titik untuk masing-masing metode
% % % x_kiri  = linspace(a, b - h, n);           % Titik awal setiap subinterval
% % % x_kanan = linspace(a + h, b, n);           % Titik akhir setiap subinterval
% % % x_tengah = linspace(a + h/2, b - h/2, n);  % Titik tengah setiap subinterval
% % % x = 2*x_kiri.^3;
% % % y = 2*x_kanan.^3;
% % % z = 2*x_tengah.^3;
% % % disp('fungsi reiman kiri')
% % % while(a <= (b - h))
% % %     fprintf('f(x%d)=%.4f\n',c,x(d));
% % %     c = c+1;
% % %     a = a+h;
% % %     d = d+1;
% % % end
% % %     
% % % % Hitung jumlah Riemann
% % % riemann_kiri   = h * sum(f(x_kiri));
% % % disp('fungsi reiman tengah')
% % % d = 1;
% % % a = 0;
% % % c = 0;
% % % while(a <= (b-h))
% % %     fprintf('f(x%d)=%.4f\n',c,z(d));
% % %     c = c+1;
% % %     a = a+h;
% % %     d = d+1;
% % %     if d==11
% % %         break;
% % %     end
% % % end
% % % riemann_kanan  = h * sum(f(x_kanan));
% % % riemann_tengah = h * sum(f(x_tengah));
% % % riemann_kiri   = h * sum(f(x_kiri));
% % % disp('fungsi reiman kanan')
% % % d = 1;
% % % a = 0;
% % % c = 0;
% % % while(a+h <= b)
% % %     fprintf('f(x%d)=%.4f\n',c,y(d));
% % %     c = c+1;
% % %     a = a+h;
% % %     d = d+1;
% % %     if d==11
% % %         break;
% % %     end
% % % end
% % % 
% % % % Tampilkan hasil
% % % fprintf('Jumlah Riemann kiri   : %.6f\n', riemann_kiri);
% % % fprintf('Jumlah Riemann kanan  : %.6f\n', riemann_kanan);
% % % fprintf('Jumlah Riemann tengah : %.6f\n', riemann_tengah);
% % % 
% % clc;
% % clear;
% % 
% % %Definisi fungsi f(x)
% % f = @(x) 2*x.^3;   % Contoh: f(x) = 2x^3
% % 
% % %Batas integrasi dan jumlah partisi
% % a = 0;
% % b = 1;
% % n = 10;              % Jumlah subinterval
% % h = (b - a) / n;     % Panjang tiap subinterval
% % 
% % %Titik-titik pada interval
% % x = linspace(a, b, n+1);      % n+1 titik
% % y = f(x);                     % f(xi) untuk semua i
% % 
% % %Metode Trapesium
% % % Rumus: (h/2) * [f(x0) + 2*f(x1) + 2*f(x2) + ... + f(xn)]
% % trapezoidal = h * (0.5*y(1) + sum(y(2:end-1)) + 0.5*y(end));
% % 
% % %Tampilkan hasil 
% % fprintf('Hampiran integral dengan metode trapesium: %.6f\n', trapezoidal);
% 
% clc;
% clear;
% 
% % Definisi fungsi f(x)
% f = @(x) 2*x.^3;   % Contoh: f(x) = 2x^3
% 
% % Batas integrasi dan jumlah partisi
% a = 0;
% b = 1;
% n = 10;              % Jumlah subinterval
% h = (b - a) / n;     % Panjang tiap subinterval
% 
% % Inisialisasi titik awal
% xi = a;
% k = 1;
% 
% fprintf('i\t\txi\t\tf(xi)\n');
% fprintf('-------------------------------\n');
% 
% % Hitung f(x0) dan f(xn) untuk ujung
% fx0 = f(xi);
% fxn = f(b);
% 
% % Inisialisasi jumlah tengah
% sum_middle = 0;
% 
% while k < n
%     xi = a + k*h;
%     fxi = f(xi);
%     fprintf('%2d\t\t%.4f\t\t%.6f\n', k, xi, fxi);
%     sum_middle = sum_middle + fxi;
%     k = k + 1;
% end
% 
% % Tampilkan f(x0) dan f(xn) juga
% fprintf('%2d\t\t%.4f\t\t%.6f\n', 0, a, fx0);
% fprintf('%2d\t\t%.4f\t\t%.6f\n', n, b, fxn);
% 
% % Hitung integral dengan metode trapesium
% trapezoidal = h * (0.5 * fx0 + sum_middle + 0.5 * fxn);
% 
% % Hasil akhir
% fprintf('\nHasil pendekatan integral (metode trapesium): %.6f\n', trapezoidal);
