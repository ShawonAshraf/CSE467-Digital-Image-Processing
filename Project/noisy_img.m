i = imread('cameraman.tif');
noisy = imnoise(i, 'poisson');
blurred = imgaussfilt(noisy, 2);

% figure
% imshow(blurred)
% title('Blurred, sigma = 2')
% 
% figure
% imshow(noisy)
% title('Noisy image')

c = edge(blurred, 'canny');

showImage(c, 'Blurred, edge, sigma = 3.5')