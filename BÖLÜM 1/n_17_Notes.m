%1.7 Polinom formda işlemler: 

% s Laplace dönüşümü için kullanılmıştır.

%1.7.1 Kök Değerlierini Bulma ve 'roots' Komutu

%Program 1.1

function x = n_17_Notes(katsayilar)

%ax^2 + bx + c = 0 formuna sahip denklem modeli için kök değerlerinin
%bulunuşuna dair Matlab dosyası.

a = katsayilar(1); 
b = katsayilar(2); 
c = katsayilar(3);

%determinant değerinin hesabı 
determinant = b^2-4*a*c;

%Det sıfırdan büyükse 

if determinant > 0
    karekokdet = sqrt(determinant);
    x1 = (-b + karekokdet)/(2*a);
    x2 = (-b - karekokdet)/(2*a);

%Det değeri sıfıra eşitse 
elseif determinant == 0
    x1 =  -b/(2*a);

elseif determinant < 0
    karekokdet = sqrt(-determinant);
    p1 = -b/(2*a);
    p2 = karekokdet / (2*a);
    x1 = p1 + p2*1j;
    x2 = p1 - p2*1j;
end

x = [x1; x2];
end

%to write a function your filename and function name must be the same. 
%this function can be reduced to roots command 

%with conv command you multiply polynomials.
%p1 = [1 -2 1];
%p2 = [1 3 5 2];
%conv(p1,p2)

%with deconv polinomials can be divided but put greater polynomial first.
%with poly command you can find out a polynomial from its roots.

% p = [1 10 27 18 0];
% r = roots (p)
% poly(r) or poly([0 -6 -3 -1])

% Polynomial calculation with polyval command 
% polyval(vector, n) vector is the polynomial and the n is the value 
% polyval(p, 5);

% Polynomial calculation with subs command, utilizes symbolic expressions. 
% subs (symbolix_expression, n)
% s_p = 's^2 + 10s + 5'

% polyder komutu ile türev alma 
% polyder(polinom vektörü)
% poly2str ile görsellik kazandırmak mümkün.

%polyint komutu ile integral alma
% polyint (polinom vektörü)
