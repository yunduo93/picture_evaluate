% ��Ӿ�����
clc,clear
L = im2double(imread('ͼ���.jpg'));
% figure,imshow(L)
IR = L(:,:,1);
IG = L(:,:,2);
IB = L(:,:,3);

[m n c]=size(L);
shape=zeros(m,n);
for i=1:m
    for j=1:n
        shape(i,j)=(i/m*255)/255;  %�������ļ�������
    end
end
% figure,imshow(shape,[])
% imwrite(uint8(shape),'shape.jpg')

%% ��ϳ��µ�ͼ��
AR = 0.9;
AG = 0.9;
AB = 0.85;
IR1 = double(IR.*shape+AR.*(1-shape));
IG1 = double(IG.*shape+AG.*(1-shape));
IB1 = double(IB.*shape+AB.*(1-shape));

input = cat(3,IR1,IG1,IB1);
figure,
subplot(121),imshow(L,[])
subplot(122),imshow(input,[])
imwrite(input,'ͼ���_fog.jpg')

%% ���ȵĸ�˹����
% noise = randn(m,n)/15;
% IN(:,:,1) = input(:,:,1)+noise;
% IN(:,:,2) = input(:,:,2)+noise;
% IN(:,:,3) = input(:,:,3)+noise;
% figure,imshow(IN,[])
% imwrite(IN,'IN.jpg')
%% ȥ����
% 
% LR = (IN(:,:,1)-AR)./shape+AR;
% LG = (IN(:,:,2)-AG)./shape+AG;
% LB = (IN(:,:,3)-AB)./shape+AB;

% L = cat(3,LR,LG,LB);
% figure,imshow(L,[])
% imwrite(L,'L_R.jpg');