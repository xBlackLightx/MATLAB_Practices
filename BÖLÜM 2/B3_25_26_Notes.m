% 2.5 Özel matrisler 

% Sıfırlar matrisi: zeros :.
% zeros komutu ile oluşturulur ve matrisin sahip olduğu bütün elemanlar 0
% değerine sahip olur.

zeros(3);
zeros(2,4);

% Birler Matrisi: one :.
% Elemanların hepsi birden oluşur. ones komutu kullanılır. 
ones(4);
ones(2,5);

% Köşegen matris: diag :.
% Satır ve sütun sayılarının aynı olduğu matrislere denir. Birinci satırdan
% başlayarak istenen değerler köşegen olacak şekilde istenen elemandan
% başlatılarak oluşturulabilir.

diag(0,1);
diag(3,1);
diag(3,2); %birinci değer konması istenen değer, ikinciisehangisıradanbaşla
diag([1 2 3],2); %Verilen matrisi 0 1 2. den başlatır. 

% Birim Matris: eye :.
% Kare matris yapısına sahip olan köşegen bir oluşturan matris

eye (3);
eye (3,4);

% Rasgele Matris: rand :.
% rand komutu tüm elemanları rasgele oluşturur. Fakat oluşturulan sayılar
% bir veya sıfır aralığında bulunur. 
rand(4); %gibi

% bu yüzden oluşturulan sayıları matematiksel işlemlere tabii tutmak 
% iktiza eder. 

A = 5+rand (1,4);
% 1 satır 4 sütun bir output verip onu 5 le topluyor.
B = 10*rand(1,7); %gibi

% Üçgen Matris: triu ve tril :.

N = rand (5);
triu (N);
% u ve l upper ve lower demek oluyor. 

% 2.6 Sıklıkla Kullanılan Matris Komutları :.

% sum komutu ile toplama :.
% Bir matrisin satırlarındaki değerleri toplayarak satır vektörüne çevirir.

P= [1:5; -2 3 7 0 -1; 9 2 -3 6 4];

% Eğer matris tek boyutlu ise satır veya sütun toplamını verir. 

% prod Komutu ile Çarpma
% Satır veya sütundaki değerleri çarpar. 
p = [1:5]; 
u = [1 2 3; 2 3 4; 3 4 5];

% mean Komutu ile Ortalama Değer Bulma:.
% Vektörün elemanlarının ortalamasını bulur. 
% Çok boyutlu yapılarda ise sütunların ortalamasını alır ve onları 

% max min Komutları En büyük En küçük değer bulma :.
% Matristeki en küçük ve en büyük değerleri bulur. Eğer çok boyutlu bir
% yapı varsa bu durumda satırlardaki en büyük değerleri alarak vektör
% formuna sokar. 

Z = [1 2 4 9; -2 5 3 7; 5 7 4 11];

% sort komutu ile sıralama:.
% sort komutu vektörü en küçükten en büyüğe sıralar. Sıralama eksi
% sonsuzdan artı sonsuza doğru yapılır. 

F = [1 -3 2 0 1 4 85 8 5 4 7 -98 -7];
% Eğer çok boyutlu bir yapı varsa sütunları kendi içinde sıralar. 

FQ = [1 2 4 5; -2 5 8 7; 5 4 7 1];

% ÇALIŞMA SORULARI





