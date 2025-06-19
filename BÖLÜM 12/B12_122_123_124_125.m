% BÖLÜM 12 MATLAB İLE GRAFİK KULLANICI ARAYÜZÜ TASARIMI (GUI)

% 12.1 Giriş
% Görselleştirme kolaylık sağlamaktadır bu yüzden GUI tasarlıyoruz. 

% 12.2 Matlab GUI Aracının Tanıtımı 

% guide yazınca geliyor.Eskiden appdesigner gibi kolayca
% açılıyormuş.appdesigner guide v2 denebilir. 
% Callback ile gui ile alakalı bileşen kod üzerinden düzenlenebilir.
% Fonksiyon tanımı verilebilir. 
% 12.3 GUI Bileşenlerinin Tanıtımı:

% Push Button :
% Üzerine tıklayınca callback fonksiyonu çalışır. Yani oraya callback
% fonksiyonunu tanımlaman lazım. Tanımlayıcı isim tag ile, kendi ise string
% ile değiştiriliyor. 

% Slider: Oklar arasında kalan çubuk ile "Value" özelliğinin değerleri
% değiştirilir. bu değer max ve min özelliklerindeki değerler ile
% sınırlıdır. Bunları programdan veya kod ile değiştirmek mümkündür. 

% Radio Button: İsmini stringden değiştirebilirsin. Üzerine tıklayınca value
% değeri 1 olur, aski takdirde 0'dır. Kod veya program ile tanımlama
% yapılabiliyor. 

% Check Button: Stringden değiştiriliyor. Value 1 oluyor, üzerine
% tıklayınca. Aksi takdirde 0 olur. 

% Edit Text: İçeriden ve dışarıdan veri girişi yapılabilen bir yapıdır.
% String özelliği ile kullanılır. Input alıyoruz kısaca.

% Static Text: Genellikle açıklama ve etiket olarak kullanılır. Özelliğin
% içeriğini değiştirir. 

% Pop-up Menu: Sandwich menu. 

% List Box: Kutu içerisinde seçenekler oluyor onları seçmeye yarıyor. 

% Toggle Box: Toggle butonu. 

% Table: Tablo oluşturur.

% Axes: Oluşturulan grafikleri çizmeye yarayan GUI bileşenidir. 

% Panel: Uygulamada gör anlamadım tanımdan. 

% Button Group: 



% ÖDEV

% guiler arasında iletişim yapılmalı. bunun için global tanımlaması olamdan
% yapılacak. Alma ve gönderme. Global olmadan işlem yapılacak. SEND
% yapılacak. Göndereceğiz o da alacak.worde hazırla çalışıp çalışmadığını
% görsün
% 
% 
% 
% 