a = imread('mandi.tif');
%a(a > 200) = 255;
a = uint8(a>150)*255;
imshow(a)