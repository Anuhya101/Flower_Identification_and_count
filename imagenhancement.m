%%load a image
I = imread("a1.jpg.jpg");
%%convert rgb image into grey level image
img =rgb2gray(I);
%%display image
figure(1);
subplot(2,2,1);imshow(I);title('original color image');
%%display histogram of the image
subplot(2,2,2);imhist(I);title('Histogram of color image');
subplot(2,2,3);imshow(img);title('grey level image');
subplot(2,2,4);imhist(img);title('Histogram of grey level image');
%%spitial domain enhancement - brightness adjust operations
R = imadjust(img);
figure(2);
subplot(2,2,1);imshow(img);
title('grey level image ');
subplot(2,2,2);imhist(img);
title('histogram of grey level image');
subplot(2,2,3);imshow(R);
title('grey image after brightness adjusted');
subplot(2,2,4);imhist(R);
title('histogram after brightness adjusted');
R = img+60;
figure(3);
subplot(2,2,1);imshow(img);
title('grey level image ');
subplot(2,2,2);imhist(img);
title('histogram of grey level image');
subplot(2,2,3);imshow(R);
title('grey image after brightness adjusted');
subplot(2,2,4);imhist(R);
title('histogram after brightness adjusted');
R = img-60;
figure(4);
subplot(2,2,1);imshow(img);
title('grey level image ');
subplot(2,2,2);imhist(img);
title('histogram of grey level image');
subplot(2,2,3);imshow(R);
title('grey image after brightness adjusted');
subplot(2,2,4);imhist(R);
title('histogram after brightness adjusted');
%%image negative
figure(5);
t = 255-img;
subplot(1,2,1),imshow(img),title('grey image');
subplot(1,2,2),imshow(t),title('image negative');
%%Histogram euqlization
figure(6);
P = histeq(img);
subplot(2,2,1),imshow(img),title('grey image');
subplot(2,2,2),imshow(P),title('After histogram equlization');
subplot(2,2,3),imhist(img),title('grey image histogram');
subplot(2,2,4),imhist(P),title('After histogram equalization');
%%point processing technique
figure(7);
gamma = 1.1;
d = double(img).^gamma;
subplot(2,2,1),imshow(img),title('grey image');
subplot(2,2,2),imshow(uint8(d)),title('powerlaw transformation');
subplot(2,2,3),imhist(img),title('grey image histogram');
subplot(2,2,4),imhist(uint8(d)),title('After powerlaw transform');
%%threshold
figure(8);
img =img(:,:,1);
[x,y]=size(img);
e1=input('enter upper threshold parameter');
for i=1:x
 for j=1:y
 if img(i,j)<e1
 b(i,j)=0;
 else
 b(i,j)=255;
 end
 end
end
for i=1:x
 for j=1:y
 c(i,j)=img(i,j) & b(i,j);
 end
end
subplot(2,2,1),imshow(img),title('grey image');
subplot(2,2,2),imshow(b),title('threshold image');
subplot(2,2,3),imshow(c),title('superimposed image');
%%converting grey level image into binary image
figure(9);
level =0.5;
Ithresh = im2bw(img,level);
imshowpair(I,Ithresh,'montage');
%%Entropy
E = entropy(img);
E
%%PSNR
B = double(I);
U = double(img);
[x,y] = size(B);
error = B-U;
MSE=sum(sum(error.*error))/(x*y);
if(MSE>0)
 PSNR = 10*log(255*255/MSE)/log(10)
else
 PSNR=99
end
error
MSE
PSNR
%%%%%%%%%%%%%%%%%%%%%%