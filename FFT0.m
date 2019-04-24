%%
close all
clear all
clc

A = imread('lu.png');
[nx,ny,nz] = size(A);

C = ifftshift(fft2(A));
% figure
% subplot(2,1,1)
% surf(real(C(:,:,1)))
% subplot(2,1,2)
% surf(imag(C(:,:,1)))

% find the central position 
Px = round(nx/2);
Py = round(ny/2);

C_new = C(Px-50:Px+49,Py-50:Py+49,1);
figure
subplot(2,1,1)
surf(real(C_new(:,:)))
subplot(2,1,2)
surf(imag(C_new(:,:)))

A1 = imread('2.png');
C1 = ifftshift(fft2(A1));
% figure
% subplot(2,1,1)
% surf(real(C1(:,:,1)))
% subplot(2,1,2)
% surf(imag(C1(:,:,1)))

C_new1 = C1(Px-50:Px+49,Py-50:Py+49,1);
figure
subplot(2,1,1)
surf(real(C_new1(:,:)))
subplot(2,1,2)
surf(imag(C_new1(:,:)))

% add to 
gap = 5;
CC = zeros(100,200+gap);
CC(:,1:100) = C_new;
CC(:,100+gap:199+gap) = C_new1;
figure
subplot(2,1,1)
surf(real(CC))
subplot(2,1,2)
surf(imag(CC))

