function [ im_avg ] = gray_avg( I )

f = fspecial('average');

x = im2double(I);
im_avg = filter2(f, x);

end

