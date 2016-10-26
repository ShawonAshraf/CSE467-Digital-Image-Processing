function [ im ] = hsi_median( I )

r = I(:, :, 1);
g = I(:, :, 2);
b = medfilt2(I(:, :, 3), [5 5]);

im = cat(3, r, g, b);

end

