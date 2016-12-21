i = imread('mandi.tif');
noisy = imnoise(i, 'salt & pepper');
blurred = imgaussfilt(noisy, 6);

% figure
% imshow(blurred)
% title('Blurred, sigma = 2')
% 
% figure
% imshow(noisy)
% title('Noisy image')

c = edge(blurred, 'canny');

showImage(c, 'Blurred, edge, sigma = 3.5')