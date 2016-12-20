i = imread('cameraman.tif');
blurred = imgaussfilt(noisy, 7);

i = imsharpen(blurred);

t = 250;

c = edge(i, 'canny');

showImage(c, 'Sharpen with default mask')