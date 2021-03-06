I = imread('hawk.png');
H = rgb2hsv(I);

rgm = median_filter(I);
rgav = avg_filter(I);


h_avg = hsi_avg(H);
hm = hsi_median(H);

%hm = hsv2rgb(hm);
%h_avg = hsv2rgb(h_avg);


figure
subplot(121);
imshow(rgav - h_avg)

subplot(122);
imshow(double(rgm) - hm)