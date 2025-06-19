
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
dizi2 = [4,5,3,7];
dizi3 = dizi1.*dizi2;

%Bölme / (Sayı, Matris)

at = 4;
bat = 2;
atbat = 4/2;

%Dizi Bölme ./ Dizinin her elemanını respectively ve karşılıklı böler.

hat = [1,2,3,5];
yat = [789,24,65,125];
hayat = yat./hat;

%Soldan Bölme \ (Sayı, matris) Ters bölme işte 5/6 yı 6/5 olarak
%hesaplıyor.

A = [1,2;3,4]; B = [7,8;9,8];
C = A\B;

%Soldan Dizi Bölme .\ (Uygula işte aynı şekilde yeter.)
%Üs alma (Sayı matrıs) ^
%Dizi üs alma .^ işlemin başında . varsa dizinin her elemanını teker teker
%mukabil indeksi ile bölüyor.

%1.4 Temel Matematiksel Fonksiyonlar:. 

%Matlab'da temel trigonometrik fonksiyonlar
%sin(x) Radyan cinsinden
a = sin(pi/2);
%cos(x)
b = cos(pi);
%tan(x)
c = tan(pi);
%cot(x)
d = cot(pi/2);
%sind, cosd (x) tand(x) cotd(x) derece cinsinden değer girilir. 
ad = sind(90); bd = cosd(180); cd = tan(180); dd = cotd(90);
%asin() acos() atan() acot() sonucu verilen fonksiyonun radyanını verir.
%istersen örnek yaparsın buna, görmesen de olur. 

% asind() acosd() atand() acotd() sonucu verilen fonksiyonun açısını verir.
%hypot() = dik kenarları verilen hipotenüsü hesaplar.

%Matlab'da logaritmik ve üstel fonksiyonlar:

%exp() = e^x 
%log() = doğal logaritma ln 
%log10() = 10 tabanında logaritma fonksiyonudur.
%sqrt() Karekök fonksiyonudur. Verilen sayının karekökünü alır. 
%nthroot() n. dereceden kök fonksiyonudur. Yani girilen değerin n. -n
%ikinci olarak giriliyor- kökünü hesaplar.
%realpow() Gerçek sayıların kuvvetini hesaplar. 5^35 bu sayede yapılır.
%abs() Bir karmaşık sayının mutlak değerini hesaplar. 
%angle () Bir karmaşık sayının faz açısını radyan cinsinden hesaplar. 
%complex() Gerçek ve sanalları verilen karmaşık sayıyı oluşturur. 
%imag() karmaşık sayının imajiner kısmını alır. 
%real() //            //  gerçek     //     //.
%unwrap() bir şey yapıyor anlamadım.
%isreal() girilen sayı gerçek ise doğru değer verir. 

%Matlab'da yuvarlama ve kalan Hesaplama Fonksiyonları

%fix() sıfıra doğru yuvarlar.
%floor() eksi sonsuza doğru yuvarlar. yani en yakına
%ceil () + sonsuza doğru yuvarlar 
%round() en yakın tamsayıya doğru yuvarlar. 
%mod() sayının modunu hesaplar 
%rem() Bölme işleminden kalanı hesaplar. 
%sign() Sayının pozitif ve negatif olma durumunu belirler, poz için 1,
%sıfır için 0, neg için -1 döndürür. Buna göre algoritma yazabilirsin.

%1.5 Sonuçların Gösterimi
%format short noktadan sonra 4 basamak gösterir.
%format long  //         //  14 //      // 
%format short/long e //       //   4\14 basamak ama bilimsel gösterir. 
%format short/long g noktadan önce ve sonra toplam 5/15 basamak gösterir.
%format bank noktadan sonra 2 basamak
%format compact sonuçlar yazılırken aradaki boş satırları kaldırır. 
%format loose Sonuçlar yazılırken araya boş satırlar koyar 

%1.6 Kontrol ve Döngü yapıları

% <,> <=, >=, ==, ~= 
% a küçük/büyük b ise doğru ||| a küçük/büyük eşit b ise doğru
%a eşit/değil b ise doğru KONTROL YAPISI YANİ :D
% && || AND ve OR yapıları

%if...elseif...else...end Şartlar sınanır ve sağlanıyorsa yapılır. 

if A>B 
    sonuc = A-B;
elseif A<B 
sonuc = B-A;
else
    sonuc = 0;
end %Syntax'ı bu şekildedir.
%switch...case...otherwise...end Caseler verilir, bu caselerden herhangi
%biri yoksa otherwise ile çıkılır. 

islem = input('Lütfen bir işlem girin (toplama, çıkarma, çarpma, bölme): ', 's');
X = 5; Y = 6;
switch islem
    case 'toplama'
        result = X + Y;
    case 'çıkarma'
        result = X - Y;
    case 'çarpma'
        result = X*Y;
    case 'bölme'
        result = X/Y;
    otherwise 
        disp('Geçersiz işlem girildi.');
end % syntax bu şekilde kullanılıyor

% while...end while şu olurken olmazken şunu yap demek. 
QW = 12093;
WE = 11000;
while QW>WE
    QW = QW + 1;
end

%for...end  indeksini belirtiyoruz, c deki gibi kullanılıyor daha pratik
%ama

toplam = 0;
for i=1:10 %1:2:11 ya da 9:-2:1 de olabilir ayarlanıyor yani 
    toplam = toplam +i;
end

%break for ve while döngüleri sonlandırmak için kullanılır. for...if
%şart2... break end end.

%continue 



  