% BÖLÜM 3 GRAFİK ÇİZİMLERİ 

% SAYIN KULLANICI
% Burada görülen uygulamaları denemek için yorum komutlarını
% kaldırabilirsiniz. Bunu farklı dosyalar halinde değilde her şeyi bütün
% olarak görmek için yaptım. Arzu ederseniz pratik olması açısından bu
% dosyadan bakarak yazabilir ve 


% 3.1 GİRİŞ
% Grafik çiziyoruz. 

% 3.2 plot Komutu ile Grafik Çizimi
% İki boyutlu grafik çiziminde kullanılır. 
% Kullanımı ile ilgili bir sinyal örneği. 
% 
% t = 0:0.1:10;
% w = 1;
% 
% 
% u = 2*sin(w*t);
% plot(t,u);

% xlabel('Zaman (s)');
% ylabel('u(t)');
% title ('u(t) = 2sin(\omega t) sinyalinin 10 saniyelik değişimi.');

% fontların daha büyük yazılması gerekmektedir. Zira bazı durumlarda
% yazılar gözükmemekte. Aşağıdaki komutlar ile bu sorunu çözmek mümkün.
% bu yüzden yukarıda yorumda bulunanların yerine tercih edilebilir. 

% xlabel ('Zaman (s)', 'FontSize', [14]);
% ylabel ('u(t)', 'FontSize', [14]);
% title('u(t) = 2 sin(\omega t) sinyalinin 10 saniyelik değişimi','fontsize',[14]);

"                                                                                                                       "

% ylabel ('u(t)', 'Rotation',0, 'FontSize',[14]); %u(t) yi çeviren komut.
% Aşağıdaki komutlar ile ibareleri taşımak mümküm.
% xlabel ('Zaman(s)', 'Position', [9.2 -2.25], 'FontSize',[14]);
% ylabel ('u(t)', 'rotation', 0, 'Position',[-0.9 1.85], 'FontSize',[14]);

% plot komutu bize düz çizgiler vermekte bu ancak bizim belli noktaları
% işaretlememiz gerekebilir. Bu yüzden plot derken bazı kullanımlar
% yapıyoruz. Tablo 3.2 de verildiği gibi bazı işaret çeşitleri var. Bunları
% ifade etmek için: . + * o x s d <>^ üçgen aşağı p h.

% plot (x ,y 'c'); Sadece bir grafik çizer
%plot (x1, y1, 'c1', x2, y2 , 'c2', gibi); c1 birinciş grafiğe ait çizgi ve
%renk çeşidi. 

% ayrıca plot standart olarak düz çizge ve mavi renkli olarak gelir fakat
% bu komutun diğer özleliklerini de bilmek gerekir.


 
 % plot (t,u, 'LineStyle','--', ...
 %     'Color','r', ...
 %     'LineWidth',2, ...
 %     'Marker','square', ...
 %     'MarkerEdgeColor','k', ...
 %     'MarkerFaceColor', 'g', ...
 %     'MarkerSize', 10);

% renk kodları r red, b blue, y yellow, i invisible, w white, k black, c
% cyan, m magenta
% bu renklerden başka plot([r g b]) ile 0 ve 1 arasında oran belirleyerek
% istenen renklerin kullanımı da mümkündür. bazı renk çeşitleri beyaz [1 1 1]
% Bu tarz bir tanımlama istenen renkleri veya standart renkleri elde etmek
% mümkün. Fakat bunun için renke kodlarını refderans almak daha olacaktır.

% plot komutu ile sadece çizgi tarzında ve renk çeşidinde değil çizgi
% kalınlığı ve işaretleme gibi başka hususlarda da değişiklikler yapmak
% mümkündür. 

% T = 0:pi/18:2*pi;
% U = 5*sin(2*T);
% plot(T,U, '-bs', 'LineWidth',3,'MarkerEdgeColor',[1 0 0], 'MarkerSize',16);
% xlabel ('Zaman(s)', 'FontSize',14);
% ylabel('u(t) = 5isn(2t) sinyalinin 0-2\pi zaman dilimindeki değişimi', 'FontSize', 14);

% Örnek olarak iki farklı sinyalin karşılaştırmasını yapalım.

w = 2;
T = 2*pi/w;
t = linspace (0,2*T);
u1 = 10*sin(w*t);
u2 = 7*cos(w*t);
% 
%  plot (t, u1, '-b', t, u2, '-.r', 'LineWidth', 3); %-b çizgi siyah demek ama mesela -.r kesikli noktalı demek.
% 
%  xlabel ('Zaman(s)','FontSize',14);
%  ylabel('u_1(t) ve u_2(t)', 'FontSize',14);
% title ('u_1(t) ve u_2(t) sinyallerinin 2T zaman dilimindeki değişimi', 'FontSize',14);

% farklı plot komutları üst üste çizim yaptırmak için hold on komutunu
% kullanmak gerekir.

plot(t,u1, '-b', 'LineWidth',3);
hold on;
plot (t, u2, '-.r', 'LineWidth',3);
% Elde grafiğin üzerine eksen çizgisinin eklenmesi:
plot ([0 7], [0 0], '-.k');
% bundan sonra çizilen her grafik üst üste eklenecek bundan kurtulmak için
% hold off demek yeterlidir. Bu sayede iki farklı grafiği ki plot komutu
% ile çizebiliyoruz. 

% grid eklemek için ise 
grid on;
% geri kaldırmak içinde grid off; 

% Bazı durumlarda elde edilen sonuçların sunumu bakımından ızgaralara ayar
% çekmek gerekebilir. bu set komutu ile yapılır. 

%y eksenindeki değer aralığının 1 olarak gerçekleştirilmesi
% set (gca, 'YTick', [-10:10]);
%y eksenindeki değer aralığının 5 olarak gerçekleştirilmesi
% set (gca, 'YTick',[-10:5:10]); %yorumla yorumla dene aga

% ytick yerine xtick kullanıldığında x eksenindeki istenen ızgara yapısı
% oluşturulur. grid on dediğimizde hem x hem de y de ızgara eklenmiş olur.
% Fakat bu durumu her zaman istemeyebiliriz. Bunun için set komutu
% kullanılır:

set(gca, 'XGrid', 'on', 'YGrid', 'on'); %off da yapabilirsin herhangi birini ve görebilirsin.
% sadece bununla kalmayıp bir ekseni log bir diğerini ise lineer
% yapabiliriz. 
set(gca, 'XScale', 'log','YScale', 'linear');
set(gca, 'XColor' ,'blue', 'YColor', 'blue');
% ölçü gösterimlerinin font büyüklüğü de ayarlanabiliyor bu set ile. set
% her şeyi setliyor yani.
set(gca, 'FontSize', [14]); %Etkisini 19 değeri değiştirilerek gözlemlemek mümkün.

% Buradan sonra yeni dosyaya geçildi. 