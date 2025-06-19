
%1.3 Aritmetik işlemler: 
% Toplama: + (İki matrisi, sayıyı, diziyi toplar)
x = 5; 
y = 10; 
z = x+y;
% Çıkarma: - (İki sayıyı matrisi diziyi çıkarır.)

a = 5;
b = 10;
c = b - a;

%Çarpma * (Sayı, Matris) Matris çarpımında çarpım kurallarına dikkat etmek
%gerekiyor. 

ac = 23;
bv = 54;
zv = 23*54;

%Dizi çarpma .* (. ile dizi bölme yapılır): 

dizi1 = [1,2,3,4];
dizi2 = [4,5,3,7,5];
dizi3 = dizi1.*dizi2;

%Bölme / (Sayı, Matris)

at = 4;
bat = 2;
atbat = 4/2;

%Dizi Bölme ./ Dizinin her elemanını respectively ve karşılıklı böler.

hat = [1,2,3,5];
yat = [789,24,65,125];
hayat = yat./hay;

%Soldan Bölme \ (Sayı, matris) Ters bölme işte 5/6 yı 6/5 olarak
%hesaplıyor.

A = [1,2;3,4]; B = [7,8;9,8];
C = A\B;

%Soldan Dizi Bölme .\ (Uygula işte aynı şekilde yeter.)
%Üs alma (Sayı matrıs) ^
%Dizi üs alma .^ işlemin başında . varsa dizinin her elemanını teker teker
%mukabil indeksi ile bölüyor.
