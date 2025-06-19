% 3.10 'subplot' Komutu ile Figür Penceresini Bölme

% subplot ile figür penceresi istenen sayıya bölünüp çokça çizim
% % yapılabilir.
% subplot(m,n,p); m satır sayısı, n sütun sayısı, p adres numarası.

subplot(2,2,3); %Bölme gerçekleştirildi.
% iki tane grafiğin çizilmesi örneği.

w = 2;
T = 2*pi/w;
t = linspace(0, 2*T);

u1 = 3* sin(w*t);
u2 = 0.5*cos(10*w*t);
ut = u1+u2;
figure(1); clf

subplot(311); plot(t,u1, '-b', 'LineWidth',3);
ylabel('\bf u_1(t)','FontSize',14);

subplot(312); plot(t,u2, '-b', 'LineWidth',3);
ylabel('\bf u_2(t)', 'FontSize',14);

subplot(313); plot(t,ut,'-b', 'LineWidth',3);
xlabel('\bf Frekans (rad/s)','FontSize',14);
ylabel('\bf u_t(t)', 'FontSize', 14);

t = linspace (2,20);

for K = 1:6;

    tfpay = 4*K;
    tfpayda = [1 5 10 14 4*k];

    TF = tf(tfpay, tfpayda);

    subplot(2, 3, K);

    step(TF, t);

    title (['K = ', int2str(K)]);
end

