% 3.11 Üç Boyutlu Grafik Çizimi

% Verilen grafiğin 3B olarak görselleştirilmewsi için Matlab'da çeşitli
% seçenekler sunulmuştur.Üç farklı yolla çizilir.

% 3.11.1 Çizgisel Grafik

% Bir fonksiyonun plot3 komutu ile tek değişkene bağlıysa 3B grafiği
% çizilebilir. 



t = linspace(0,5*2*pi, 1000);

x = sin(2*t).*(1-exp(-t/10));
y = cos(2*t).*(1-exp(-t/10));

plot3(x,y,t);
xlabel('x(t)'); ylabel('y(t)');zlabel('t(sn)');
grid on;

t = linspace(0,10, 1000);

for c = 0.5:0.5:2.5 
    y = 1/3-1/3*(cosh(1/2*t*(c^2-12)^1/2))*(c^2-12)^(1/2)+c*sinh(1/2*t*(c^2-12)^(1/2))/(c^2-12)^(1/2).*exp(-1/2*t*c);

    plot3(c*ones(1,length(t)),t,y,'LineWidth',2);
    hold on;
end

xlabel('x(t)'); ylabel('y(t)'); zlabel('t(sn)');
grid on;

% Eğer grafikte eksenlerin yönü değiştirilmek istenirse aşağıdaki komutlar
% kullanılabilir. 

set(gca, 'YDir', 'Reverse');
set(gca, 'XDir', 'Reverse');

% 3.11.2 Ağ Yüzeyli Grafik

% İki değişkenli fonksiyonların 3B sunumu için kullanılan grafiğin yüzeyi
% ağ şeklinde elde edilir. 

% x ve y değişim aralıklarından ızgara oluştur.
[x,y]= meshgrid(-5:0.5:5);

r = sqrt(x.^2 +y.^2);
z = -sinh(r);

mesh (x,y,z);
xlabel('x'); ylabel('y');zlabel('z');

% 3.11.3 Yüzeysel Grafik
surf(x,y,z);
xlabel('x'); ylabel('y');zlabel('z');
surf(x,y,z,'FaceColor','interp','EdgeColor',[0 0 1]);
xlabel('x'); ylabel('y');zlabel('z');
% Facecolor ile ağ ile bölmelendirilen kısımlardaki renklerin geçişi
% grafikte de görüldüğü gibi tek renk yerine z eksenine bağlı olarak interp
% seçeneği ile tonlandırılmıştır. Ağ rengi de EdgeColor özelliği
% yazıldıktan sonra r,b,g ile yazılmıştır. blue belirtilmiştir.

% GAUSSa ait 3B grafiğin çizimi:

[x,y] = meshgrid([-2:0.2:2], [-2:0.2:21]);
f = 1*exp(-1*((x-0).^2+(y-0).^2));

% grafiğin çizdirilmesi
surface(x,y,f, 'FaceColor','interp','EdgeColor','none');

view(-50,20);
camlight left;
ligthing phong;

% Çizimlerde kullanılan bazı MATLAB Komutları 
% plot: 2b grafik çizimi
% line: iki nokta arasında doğru parçası çizer
% flopt 
% explot 
% ezplot 
% plot3
% mesh
% surf
% subplot
% semilogx 
% semilogy
% loglog
% grid
% title
% xlabel
% ylabel
% zlabel
% gtext
% legen
% ginput

% \lambda \Lambda filan diye yunan harfleri yazılıyor.