% KOMPLEKS SAYILAR:.

% z = a +bj yapısı ile gösterimi yapılır.

z = 3 +2*i; %MATLAB gösterimi bu şekildedir. 

% Sanal bir doğru parçasının hesabı
r = sqrt(real(z)^2 + imag(z)^2); 
%Gerçek ve imajiner kısımların karesinin toplamı ile elde edilir.

% Teta açısının radyan cinsinden hesabı

theta = atan(imag(z)/real(z));
% imajiner / reel ile olur.

thera = atand(imag(z)/real(z));
% Aynı zamanda atand yerine theta = atan(imag(z)/real(z))*180/pi de
% kullanılabilir.

% Bunlarla uğraşmak yerine abs, angle ve phase komutları da kullanılabilir.
% Elde edilen sonuçlar radyan cinsinden olduğu için *180/pi yapılmalıdır.
% Örnek 2.2 

R = 3*sqrt(2)*exp((pi/5)*j);

% Matematiksel ifadelerin fonksiyonlar eşliğinde bir yazım metodu var. 
% Örnek 2.3 Eşitliği ifade ediniz.

S= [1+2j 2-3j; 3+4j 4+j];
% Örnek 2.4  Verilen devrenin akımını ve elemanlar üzerinde dşen gerilimi
% bulma sorusu
% devre elemanları
R = 5; L =3j;
% güç kaynağı
E=10;
% empedans değeri
Z = R+L;
% Akım hesabı
I = E/Z;
% Gerilimler Hesabı
UR = I*R;
UL = I*L;

clc %EKranı temizle
disp('--- Devre karakteristikleri ---');
disp (['I : ' num2str(abs(I)) '/'  ...
    num2str(angle(I)*180/pi) '°']);
disp (['UR :' num2str(abs(UR)) '/' ...
    num2str(angle(UR)*180/pi) char(176)]);
disp (['UL :' num2str(abs(UL)) '/' ...
    num2str(angle(UL)*180/pi) char(176) ;]);


%Aynısı bir kapasitör içinde yapılabilirdi.
% Örnek 2.5 ve 2.6 ayrıca çözülebilir ancak genel olarak temel mantık
% devrenin genel itibariyle çözülmesi ve daha sonra bu çözümün MATLAB'a
% aktarılması. Devre çözen bir algoritma yok fakat ne yapacğaını tarif eden
% bir yapı var.

% 2.4 VEKTÖR OLUŞTURMA:.

% Tek boyutlu bir vektör oluşturmak için 1:8 yapısı kullanılabilir. 

A = 1:2:27; %gibi.

% ilk değer: artış oranı : son değer. 

% Seçilen artış oranı ile son değer kesişmeyebilir bu durumda range i adım
% sayısına bölmemiz gerekiyor
% ilk değer: (son değer - ilk değer)/aralık adedi: son değer.

C = 1:(30-1)/100:30;

D = [0:1:4 ; 2:1:6; 1:-1:-3]; %gibi bir gösterimde mümkündür.

% ANCAK bu gösterimde oluşturulan vektörler lineerdir. Şayetki nonlineer
% bir yapı istersek linspace ve logspace fonksiyonları kullanılabilir.

AL = linspace(1,5); %1 de n5 e kadar 100 adet sayı oluşturulur. 
ALS = linspace(1,5,20); %Şimdi ise istediğimiz kadar sayı oluşturur.
BL = logspace (1,5); %1den 5 e kadar 50 sayı oluşturulur. 
BLS = logspace(1,5,25); %1den 5 e kadar 25 sayı oluşturur. 

% Vektörün bir elemanını seçmek isteyebiliriz veya boyutu hakkında bilgi
% edinmek isteyebiliriz. Bunun için size kullanılır
sizeof = size(BL); %gibi.

 H = [1:0.5:4 ; -1:0.2:0.2;; 4:-0.1:3.4];
 sizeofH = size(H);

 %H nin 2. satır 3. sütununun elemanının seçimi. 

 H(2,3);

 % H nin 1. satırının seçimi
 H(1,:);
 % 4 sütunun seçimi
 H(:,4);

 K = [1:2:15];
 K(:,4);


 L = K'; %Transpoze alımı da bu şekilde gösterilmiş.

 % Matris elemanı olarak vektörlerde tanımlanabilir.

% Örnek 2.7 nin çözümü yapılmış. 
R = 10;
I = 0:2:10;
V = R.*I;

P = (I.^2)*R;

resultat =  [I ; V; P];



 % 3d plotting yapmıştık en son derste. dedi gürkan. 






