% [fname pname]=uigetfile('*.jpg','pick a picture','F:\0-����ϵ��\chapter6-GUI���\picture');
% 
% I =imread([pname,fname]);
I = imread('ˮ2.jpg');
figure;
a=I(:,:,1);
b=I(:,:,2);
c=I(:,:,3);
plot3(a,b,c,'.','markersize',5),box on; 
xlabel('R')
ylabel('G')
zlabel('B')
set(gca,'FontSize',20,'Fontname', 'Times New Roman');
zlabel('B','FontName','Times New Roman','Rotation',0);

