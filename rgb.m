[fname pname]=uigetfile('*.jpg');
I =imread([pname,fname]);
% figure;
% imshow(I);title('Sourse');
figure;
a=I(:,:,1);
b=I(:,:,2);
c=I(:,:,3);
plot3(a,b,c,'.','markersize',5),box on; 
xlabel('R')
ylabel('G')
zlabel('B')
