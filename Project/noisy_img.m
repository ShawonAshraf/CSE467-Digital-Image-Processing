i = imread('cameraman.tif');
noisy = imnoise(i, 'speckle');
blurred = imgaussfilt(noisy, 4.5);

% figure
% imshow(blurred)
% title('Blurred, sigma = 2')
% 
% figure
% imshow(noisy)
% title('Noisy image')

c = edge(blurred, 'canny');

showImage(c, 'Blurred, edge, sigma = 4.5')