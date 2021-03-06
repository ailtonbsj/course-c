% Tutorial de Octave
% As linhas começadas por porcentagem é um comentário 

% Remove as variaveis do escopo atual
clear;

% Limpa o terminal
clc;

% Cria Matriz 2x2 nomeada como A e NÃO exibe no terminal
A = [ 1 2; 3 4 ];

% Cria Matriz 2x2 nomeada como B e exibe no terminal
B = [ 5 6; 7 8 ]

% Produto termo a termo
C = A .* B

% Divisão termo a termo
D = A ./ B

% Produto Matricial
E = A * B

% Divisão Matricial. Equivalente => A * inv(B)
F = A / B

% Matriz inversa. Equivalente => A * G = I, onde I = [1 0; 0 1]
G = inv(A)

% Cria Matriz 3x2 nomeada como H
H = [1 2 3; 4 5 6];

% Tamanho da Matriz, Linhas e Colunas
size(H)
size(H,1)
size(H,2)

% Cria vetor de range com intervalo [5,10]
V = 5:10

% Comprimento do vetor V
length(V)

% Cria matriz de zeros e uns
 J = zeros(3,3)
 K = ones(3,3)
 
% Carrega pacote adicional
pkg load image
 
% Obtem uma imagem
file = imread('pics/lena.jpg');

% Convert para cinza
img = rgb2gray(file);

% Calcula histograma
histIm = imhist(img);

% Plota um grafico
plot(histIm);

% Equaliza o histograma da imagem
eqIm = histeq(img);

% Visualiza imagem
imshow(eqIm)

%Transforma matriz em vetor
L = A(:);