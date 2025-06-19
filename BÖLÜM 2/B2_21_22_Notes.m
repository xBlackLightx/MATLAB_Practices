%MATRİS İSLEMLERİ:. .:

%Matrislerde temel işlemler:
% Toplama:
% Matrislerin boyutu aynı olmalı. A ve Byi toplamanın şartı budur.
% A = [1 2 3 4; 7 8 9 -45];
% B = [5 6 3 2; 7 -8 9 5];
% C = A + B; gibi.

%Çıkarma :.
% Toplama gibi 
% D = A - B;
% Toplama ve çıkarmada matrise sayı ekleme veya matristen sayı çıkarma
% yapabiliyoruz, bunu yaparken matris her elemanına işlem uygulanır.

% Çarpma :.
% Kare tipi haricinde bazı şartlar aranır. bu 2*3 ve 3*2 şeklinde
% olmasıdır.
% E = [1 3 4; -2 5 2];
% F = [2 0; 5 4; -1 6];
% ans = E*F yazınca gelen sonuç birincinin satır ikincinin sütun sayısından
% müteşekkil
% Sabit sayı ile de çarpım yapılır. 2*F gibi
% Matris elemanları çarpımı için ise .* kullanılır. 

% Determinant :.
% Matrisin deti boyut büyüdükçe zorlaşır fakat matlab için bu bir sorun
% değildir. 
% X = [7 8 9 4 5; 51 25 5 2 4; 7 8 5 6 9; 45 4 7 6 32; 785 654 21 65 4];
% ans = det(X); yapıverdi hemen. 

%Matrisin Tersi:.
% Biraz karmaşık olan bu işlem bölüm 5 te anlatılacaktır. 
% inv (X); ile yapılır.
% Ayrıca bölme işlemi inv ile yapılır çünkü tersi alınan F matrisi 1/F ye
% eşittir. Gyi f ye bölmek için F nin tersini alıp g ile çarpmak gerekir.

%Matlabda direnç ve gerilim hesaplamak:.
direnc = [1 2 3; 7 11 -13; 17 19 -23];
gerilim = [22; -10; -14];

akimlar = inv(direnc)*gerilim;
% Bölme işleminin nasıl olduğunu bilmekl bu yüzden önemli. 

% Aynı zamanda elementwise bölüm işlemi ./ ile yapılıyor. 

% Rank :.
% Matrisin saihp olduğu en büyük boyuta denir. 
% rank (direnc);

% Kuvvet Alma:.
% sayının kuvveti 2^3 gibi olur.
% matrisin kuvvetini almak ise M.^2 ile olur. Noktadan anlaşılacağı üzere
% elementwise üs alma var. Ayrıca elementwise üs alma matrisler arasında da
% olabilmektedir. 

M = [2 4 5];
N = [7 8 9];

mov = M.^N;
