
%first task
I=imread('moon.bmp');
close all;
imhist(I);
Iout= 255*(I>=17); %We define threshold value to 17
figure
imshow(I); title('Original Image');
figure
imshow(Iout); title('After thresholding');

%second task
clear
clc
close all
I = imread('fractured_spine.tif');
figure
imshow(I); title('Original Image');
Icopy=double(I)/255;
param= [0.3 0.4 0.6];
for i = 1:3
    Iout= 255 * Icopy .^ param(i);
    Iout=uint8(Iout);
    figure 
    imshow(Iout); title(param(i)+'fractured spine');
end

%third task
close all
I=imread('kids.tif');
figure
imhist(I); %strecthing the lower and higher bound for increasing the contrast

