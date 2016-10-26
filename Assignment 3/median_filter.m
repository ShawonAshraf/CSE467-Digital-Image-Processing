function [ im ] = median_filter( I )

r = medfilt2(I(:, :, 1), [5 5]);
g = medfilt2(I(:, :, 2), [5 5]);
b = medfilt2(I(:, :, 3), [5 5]);

im = cat(3, r, g, b);

end

