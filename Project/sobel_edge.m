i=imread('coins.png');
t = graythresh(i);
bw = im2bw(i, t);
x = edge(i, 'prewitt');

prewitt = x;
sobel = edge(i, 'sobel');
roberts = edge(i, 'roberts');

% figure
% imshow(x)
mh = edge(bw, 'log', t, 50); 
c = edge(bw, 'canny');