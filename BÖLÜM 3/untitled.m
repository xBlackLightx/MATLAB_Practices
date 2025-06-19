%%
% t = linspace(-2,5);
% A = (2.*t+5)./(3.*t.^2+4.*t-1) ;


% plot(t,A); 
%%
% syms x;
% fplot(((2*x+5)/(3*x^2+4*x-1)),[-2,5]);
%%
% ezplot (((2*x+5)/(3*x^2+4*x-1)),-2,5);
%%
t = [-6:0.01:6];
A = t.^3 + t.^2 -3.*t +1;
plot(t,A);
%%
% w = 4;
% T = (2*pi)/w;
% t =linspace(0,3*T,50)
% u1 = 5*sin(4*t)
% u2 = 3*cos(4*t)
% u3 = u1+u2;
% plot(t,u3,'LineWidth',4,'Color','green','LineStyle','--','Marker','.')
% xlabel('\bfX ekseni', 'FontSize',14)
% ylabel('\it Y Ekseni', 'FontSize',12)
% title('\bf\it BAŞLIK', 'FontSize',13)
%%
% w = 3;
% T = (2*pi)/w;
% t = linspace (0,T,50);
% u1 = sin(3*t);
% u2 = cos(3*t);grid on;
% subplot(1,2,1); plot(t, u1);
% xlabel('t(sn)'); ylabel('y_1(t)'); title('y_1=sin(3t)');
% subplot(1,2,2); plot(t,u2);
% xlabel('t(sn)'); ylabel('y_2(t)'); title('y_2=cos(3t)');grid on;

% Frekans ve periyot tanımı
w = 1; % Frekans
T = (2 * pi) / w; % Periyot

% Zaman aralığı tanımlama
t = linspace(0, 4 * T, 100); % 4 periyotluk bir zaman aralığı

% Sinyallerin tanımı
u1 = 3 * cos(w * t);
u2 = 5 * sin(w * t);

% Grafiği çizdirme
figure;
plot(t, u1, 'r-s', 'LineWidth', 2, 'MarkerSize', 8, 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'none'); % u1(t) kırmızı kareler, içi boş
hold on;
plot(t, u2, 'b-o', 'LineWidth', 2, 'MarkerSize', 8, 'MarkerEdgeColor', 'blue', 'MarkerFaceColor', 'yellow'); % u2(t) mavi daireler, içi dolu
hold off;

% Grafik ayarları
xlabel('Time (seconds)');
ylabel('u_1(t) and u_2(t)');
title('Comparison of Two Signals');
legend('u_1(t) = 3cos(\omega t)', 'u_2(t) = 5sin(\omega t)', 'Location', 'northeast');
grid on;
set(gca, 'FontSize', 12);
