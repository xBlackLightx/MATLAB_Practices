% BÖLÜM 11 Veri Giriş-Çıkış Uygulamaları

% 11.1 Giriş 
% Veri giriş çıkışı yapıyoruz.Farklı metotlar kullanılıyor. Bunlar
% incelenecek.

% 11.2 Matlab Veri Alma Sihirbazı
% En sık kullanılan metot budur. Home da import data var onunla veri çekmek
% mümkün. Dosya seçimi açılan ekrandan yapılır. Dosya seçiminden sonra
% sihirbaz açılım ve buradan istenen değişkenler alınabilir. Bu şekilde
% gerekli işlemler yapılabilir.

% 11.3 Matlab'da Dosya Açma, Yükleme ve Kaydetme

% MATLAB da bir çok dosyaya ulaşmak, onları açmak, yeni dosya oluşturmak,
% çalışma alanındaki değişkenleri kaydetmek vb bir çok işlem mümkündür.

% open(): dosyaları açar.
% load(): dosyaları yükler. 
% save (): matlab workspace deki dosyaları kaydeder.
% importdata (): Dosyadan Matlab çalışma alanına verileri yükler.
% uigetdir: istenen klasörün yolunu ve adını elde etmek için bir diyalog
% kutusu açar.
% uigetfile(): istenen dosyanın adını elde etmek için bir diyalog kutusu
% açar.
% uiimport (): istenen verileri dosyadan veya panodan Matlab çalışma
% ortamına almak için veri alma sihirbazını açar. 
% uiputfile(): İstenen bir dosyayı kaydetmek için diyalog kutusu açar. 
% uisave(): matlab çalışma alanındanki değişkenleri kaydetmek için bir
% diyalog kutusu açar.

% 1.13.1 Uygulamalar: 

% bak yap uygula vakit kaybetme şimdi

% 11.4 Text Dosyalarındaki Verilerin giriş-çıkışı

% csvread(): virgülle ayrılmış değerleri dosyadan okur.
% csvwrite(): virgüller ayrılmış biçimde dosyaya yazar.
% dlmread(): ASCII ayrıştırıcı ile ayrılmış sayısal değerlerin bulunduğu
% dosyadan okuma işlemi yapar. 
% dlmwrite(): Değerleri dosyaya ASCII ayırıcı ile yazılması işlemini yapar.
% fileread(): dosya içeriğini string olarak okur.
% textread(): içerisinde birden fazla alan veya değişken olan dosyaların
% okunması için kullanılır. 
% textscan(): Verileri textten veya stringten çekip cell e atar.bunun için
% text dosyası fopen ile tanımlanmış olmalıdır. 
% type(): Dosyanın içeriğini gösterir. Bir değişken atamaz. 

% 11.4.1 Text Dosyasındaki Verilerin Giriş Çıkışı ile uygulamalar.
% yaparsın bir ara. 

% 11.5 Excel dosyasındaki verilerin giriş ve çıkışı

% xlsinfo(): Dosyaya bakar mı excel mi diye
% xlsread (): excel dosyasını okur. 
% xlswrite(): Excel dosyasına yazar.

% 11.6 Düşük seviye dosya işlemleri ile verilerin I/O su. 

% fopen(): Dosya oluşturur veya mevcut dosya ile ilgili bilgi sağlar
% fclose(): Açık bir dosyayı veya dosyaları kapatır.
% feof(): Dosya sonunu kontrol eder. 
% ferror(): hata bilgisini verir.
% fgetl(): Dosya pozisyonun belirtecinin bulunduğu konumdan itibaren satır
% karakterlerini silerek okuma yapar. harika aqyum
% fgets(): dosya pozisyon belirtecinin bulunduğu konumdan itibaren satır
% karakterleri ile okuma yapar.
% fprintf(): txt ye istenen formatta yazı basar.
% fread(): Binary dosyadan veri okur
% frewind(): Pozisyon belirtecini dosyanın başlangıcına taşır.
% fscanf(): Text dosyasından belirtilen formatta veri okur.
% fseek(): pozisyon belirtecini istenen noktaya taşır
% ftell(): Belirtecin bulunduğu pozisyonu döndürür.
% fwrite(): binary dosyaya veri basar.