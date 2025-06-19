% 1 
ELDE = [2 4.7 35+3i 5*exp(-1.6) sqrt(23) sin(pi/2)];
% 2 
all = [1:1:10];
odd = [1:2:10];
even = [2:2:10];

% 3 
zerofive = [0:0.5:10];
decbyfive = [5:-0.5:0];
ohtotweni = linspace (0,20,120);
logarithmic = logspace (0 , 1000);

% 4
threefour = zeros(3,4);
threethree = ones(3,3);
onetwobla = diag([1 2 3 4],0);
tentotwenty = rand(3,3)*10 + 10;

% 5 
ohtotwenifo = [0:3:24];

% 6

A = [linspace(0,20,6);linspace(17,12,6);linspace(1.1,-0.4,6)];

% 7
B = [1 4 7 10 13;2 5 8 11 14; 3 6 9 12 15];

BB = B(2, :);
CC = [B(:,1),B(:,4)];


%%
% 8
rowvec = linspace (2,57,12);
satir = [rowvec(1,1),rowvec(1,2),rowvec(1,9),rowvec(1,10),rowvec(1,11),rowvec(1,12)];
%%
% 9
A = [1 3 5 7 9 11; -2 -4 -6 4 2 0; 0 1 2 -3 -4 -5; 8 6 4 2 4 6];
B = A([1:4],[3:4])  %
C = A(:,[1,3:5] )
D = A([1,2], :)
%%
%10 

deye = eye(5);
deye([1,2],[3:5]) = 2
deye([3:5],[1,2]) = 3
deye([4,5],[3]) = 1
deye
