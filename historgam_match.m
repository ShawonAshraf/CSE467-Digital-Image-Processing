im1 = imread('coins.png');
im2 = imread('cameraman.tif');

hist1 = imhist(im1);
hist2 = imhist(im2);


match = zeros(256, 1, 'uint8');

cdf1 = cumsum(hist1) / numel(im1);
cdf2 = cumsum(hist2) / numel(im2);

for px = 1 : 256
    [~, v] = min(abs(cdf1(px) - cdf2));
    match(px) = v - 1;
end

x = match(double(im1) + 1);

figure
imhist(x)


