function [ im ] = hsi_avg( H )

f = fspecial('average');

r = H(:, :, 1);
g = H(:, :, 2);
b = H(:, :, 3);


bd = im2double(b);

ba = filter2(f, bd);

im = cat(3, r, g, ba);


end

