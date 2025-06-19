% 3.6 'ezplot' Komutu ile Grafik çizimi 

% yine fonksiyon grafiği çizer fakat bu sefer belli aralıkta çizer. syms
% ile tanımlanan sembolik bir ifadeyi çizebilir. 
% ezplot('x^3+ 2*x+1'0 ,5);

% veya F(x)i sembolik bir değişken olarak tanımlayıp 0 5 saniye arasındaki
% grafiğinin çizimi.
% syms x;
% ezplot (x^3+2*x+1,0,5);
% ezplot (x^3+2*x+1,[0,5]);
% şeklinde.

%'gtext' Komutu ile açıklama yazma: 

% Grafiğe açıklama yazmaya yarar. Faydalı olabileceğini düşündüğün şeyleri
% yazabilirsin.

w = 1;
T = 2*pi/w;
t = linspace(0,2*T);
u = 5*sin(1*w*t+pi/6);

% Grafik çizimlerinin plot ile gerçekleştirilmesi.

plot(t, u, '-b', 'LineWidth', 3);
hold on;
axis ([0 14 -6 6]);
plot ([0 14], [0 0], '-.k');
xlabel('Zaman (s)','fontsize', 14);
ylabel('u(t)', 'fontsize', 14);
title ('u(t) = 5sin(\omega t + pi/6) sinyalinin değişimi', 'FontSize',14);

% Grafik üzerine u(t) ifadesinin yazdırılması:

gtext('u(t) = 5sin(\omega + \pi/6)');

% \rm normal ölçüye dönüşüm yapar \bf kalın. \it italik.
%  Bunları kullanırken {}, kullanmak tavsiye edilir. 
% \bf \it aynı anda kullanılabilir. 

xlabel('\bf Zaman(s)' );
ylabel ('\it u(t)');

% title ('\bf u(t) = 5sin(\omega t + pi/2 \rm sinyalinin değişimi');
% hem italik hem de bf yazımı
title ('{\bf u(t) = 5sin(\omega t + pi/2 }{\bf \it sinyalinin değişimi.}');

% Ayrıca fontlarda ayarlanabilmektedir. 
xlabel ('\fontname{Courier New} \bf x ekseni ', 'Color','b', 'FontSize',[14]);
ylabel ('\fontname{Verdana} \bf y ekseni ', 'Color','m', 'FontSize',[14]);
title ('\fontname{Courier New} \bf Örnek Uygulama', 'Color','b','FontSize', [18]);
xlabel ('\bf x ekseni', 'FontName','Courier New'); %şeklinde de yapılabilir ki çok daha kolay 
ylabel ('\bf y ekseni', 'FontName','Verdana');
title('\bf Örnek Uygulama', 'FontName','Freestyle Script');
% Bu atamalar aynı şekilde set komutu ile de yapılabilir.

set(get(gca, 'xlabel'), 'Color', 'b');
set(get(gca, 'ylabel'), 'Color', 'm');
set(get(gca, 'title'), 'Color', 'r');

% Açıklamalar iki satırdan da oluşturulabilir.

xlabel({'\fontname{Courier New} \bf x', '\fontname{Courier New} \bf ekseni'}, 'Color', 'b', 'fontsize', [14]);
ylabel({'\fontname {Verdana} \bf y', '\fontname{Verdana} \bf ekseni'}, 'Color', 'm', 'fontsize', [14]);
title({'\fontname {Freestyle Script} \bf Örnek', '\fontname {Freestyle Script} \bf uygulama'});

% background ayarlanabilir, bunu whitebg komutu yapar.
whitebg('c'); %bu grafiğin içini ayarlıyor
% bu grafiğin dışını ayarlıyor
set(gcf,'Color', 'c');


% 3.8 'legend' komutu ile açıklama ekleme

% legend komutu tanımlanan konuma göre figür penceresi ekler. açıklamalar
% ve konum eklenir. Metin ayarlama operasyonları burada da yapılır. 

% 0 Grafik penceresine otomatik yerleştirir. 1 Sağ üst köşeye koyar 2 Sol 
% üst köşeye koyar 3 Sol alt köşeye koyar. 4 Sağ alt köşeye koyar. -1
% grafiğin dışına sağ üstte koyar.

% legend('u1_(t) ', 'u2_(t)'); ile açıklama eklenebilir. 
% Ayrıca en sona konum bilgisi eklenmeli.

%Örnek bir uygulama:
% w = 2;
% T = 2*pi/w;
% t = linspace(0, 2*T);
% u1 = 10*sin(w*t);
% u2 = 7*cos(w*t);
% plot (t, u1, '-b', t, u2, '-.r', 'linewidth', 3);
% hold on
% plot([0 7], [0 0], '-.k');
% legend ('u_1(t)', 'u_2(t)', -1);

% 3.9 'ginput' Komutu ile Değer Okuma:

% ginput(n) n --> grafik üzerinde işaretlenecek nokta sayısı. 
% Kullanılabilmesi için öncelikle bir figür penceresinin açık olması
% gerekir. Bu komutun kullanımı ile figür penceresi üzerinde farenin
% hareketine göre gösterim olur.



