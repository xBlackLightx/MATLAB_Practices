%3.2 plot komutunun uygulamaları.

% w = 1; 
% T = 2*pi/w;
% t = linspace(0, 2*T ,50);
% u = 2*sin(w*t);
% plot (t, u, 'LineWidth',3);

% set komutu ile eksene değer atama yapmak mümkün, bunun için:

% set(gca, 'XTickLabel', {'0t', '1t', '2t','3t','4t','5t','6t','7t'});
% set(gca, 'YTickLabel', {'-d', '-c', '-b','-a','0','a','b','c','d'});
% grid on;

% axislerin isminin yazdığı yazıların konumları da değiştirilebilir.
% aşağıdaki kod karşıya ve yukarıya attı mesela.

% xlabel('x axisi', 'FontSize',[13]);
% ylabel('y axisi', 'FontSize',[13]);
% set(gca,'XAxisLocation', 'top');
% set(gca, 'YAxisLocation', 'right');

% Program 3.8

w = 1; 
T = 2*pi/w;
t = linspace (0, 2*T, 50);
u =2*sin(w*t);
grafik = plot (t,u);
axis([0 14 -2.5 2.5]);
grid on

% set komutunun bazı örnek uygulamarı 
%gca yerine grafik yazdık gca plotun çizdiği demekken grafiklere variable atanabiliyor.
set(grafik,'color', 'black'); 
set(grafik,'linewidth', 3);
set(grafik,'linestyle', '--');
set(grafik, 'marker', 's');
set(grafik, 'markersize', 14);
set(grafik, 'markeredgecolor', 'b');
set(grafik, 'markerfacecolor', 'r');
set(gca, 'FontSize', [13]);%gca get current axes

% grafik üzerinde eksen ve başlık açıklamaları yapılması
xlabel('Zaman (s)', 'FontSize',[14]);
ylabel('u(t)', 'fontsize', [14]);
title('u(t) = 2in(\omega t)', 'FontSize',[14]); %\omega omega çizer.

% set(1, 'name', 'başlık'); % bu uygulama ile grafiğe isim verilebilir.
set(1, 'name', 'Sinüs Eğrisi');
% bu uygulamalar sonucunda elde edilen bir figür grafiksel sonuç ismi
% verilecek .eps (Encapsulated PostScript formatında) uzantısıyla
% kaydedilebilir. Bunun için şu kullanılır.

print -deps fig1; %gif1 figür penceresine verilen isimdir.

% 3.3 'axis' Komutu İle Eksen Ölçeklendirme

% axis([]); %[xmin xmak ymin ymak]
% set ile her şey set edilebilir bu da 

set(gca, 'XLim', [0 11]);
set (gca, 'YLim', [-2.5 2.5]);
% Mesleki uygulamarda logairtmik ölçülendirmede gerekebilir.
% Bunun için plot ile aynı işlevi gösteren farklı çizim komutları vardır.

% plot eksenler doğrusal
% semilogx x log y doğ
% semilogy x doğ y log
% loglog eksenler logaritmik.

% 3.4 'line' Komutu ile Doğru Çizimi
hold on;
% plota alternatif olarak sadece iki nokta arasında bir doğru parçası
% çizmek için kullanılır. line(x,y); x e ait vektörel ifade y ye ait vek.
% if.

line ([0.5 2.5], [1 4.5]);

axis ([-2 12 -2 5 ]); %iki grafikte oturuyor :)
% görsellik için bazı dokunuşlar
plot(0.5, 1, 'xk', 2.5,4.5, 'xk', 'MarkerSize',12);
plot([0 0.5], [1 1], '-k', [0.5 0.5], [0 1], '-.k');
plot([0 2.5], [4.5 4.5], '-.k', [2.5 2.5], [0 4.5], '-.k'); %kesikli çizgili eklemeler yaptı.
% siyah renkte. Bu sayede grafiğe görsellik verildi arzu edilirse axis
% ayarlanarak ve yorumlamalar yaparak daha net görülebilir.

% 'fplot' Komutu ile Grafik Çizimi

% fonksiyona verilen range ile çizim yapar.

fplot ('x^3 + 2*x + 1', [0 5]);

xlabel('\it Zaman (s)', 'FontSize', 12);
ylabel('\it F(x)', 'FontSize',12);
title('{\bf \it F(x) = x^3+2x+1 } \it fonksiyonunun grafiği.'); %\bf ve \it kalın ve italic

% fplot ('x^3+2*x+1', [0 5], 0.1, '-rs'); çizgi çeşidi ve tolerans
% aralığıda belirlenmiş oluyor bu şekilde. 
