function [ im_avg ] = avg_filter( I )

f = fspecial('average');

r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);

rd = im2double(r);
gd = im2double(g);
bd = im2double(b);

ra = filter2(f, rd);
ga = filter2(f, gd);
ba = filter2(f, bd);

im_avg = cat(3, ra, ga, ba);


end

