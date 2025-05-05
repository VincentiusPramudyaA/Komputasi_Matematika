% fungsi f(x) = 2x
f = @(x) 2*x;
%titik evaluasi
x = 1;
%daftar nilai h
 h_value = 0.01;
% h_values = [le-1, le-2, le-3, le-4];
%turunan eksak
df_exact = 2;
disp('---perbandingan turunan numerik untuk---')
%loop untuk tiap nilai h
%for i = 1:5
for i = 1:5
    h = h_value;
    %metode beda maju
    df_forward = (f(x+h)-f(x))/h;
    %metode beda mundur
    df_backward = (f(x)- f(x-b))/h;
    %metode beda tengah 
    df_central = (f(x+b)-(x-h))/(2*h);
    %menampilkan hasil
    disp(['h = ',num2str(h)])
    disp(['beda maju :', num2str(df_forward)])
    disp(['beda mundur :', num2str(df_backward)])
    disp(['beda tengah :', num2str(df_central)])
    disp(['turunan eksak:', num2str(df_exact)])
    disp('')
end
    