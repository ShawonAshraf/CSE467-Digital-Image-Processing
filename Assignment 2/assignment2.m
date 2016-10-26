image = imread('rice.png');
%show image using otsu's method
t_otsu = graythresh(image);

%now minimized algorithm
n = 256;
c = imhist(image, n);
sum_c = sum(c);
p = c / sum_c; % probability

for i = 1 : n
    low = sum(p(1:i));
    high = sum(p(i+1 : n));
    mean_low = sum( (p(1 : i) .* (1 : i)') ) / low;
    mean_high = sum( (p(i+1 : end) .* (i+1 : n)') ) / high ;
    
    % get variance
    
    ii1 = (1:i)';
    ii2 = (i+1:n)';
    
    t1 = sum((ii1 - mean_low).^2 .* p(1:i));
    t2 = sum(((ii2 - mean_high).^2 .* p(i+1:n)));
    
    v1 = t1 / low;
    v2 = t2 / high;
    
    %v(i) = low * high * ((mean_low - mean_high)^2);
    v(i) = (low * v1) + (high * v2);
end

minv = min(v(:));

% find minimum index

for i = 1:n
    if v(i) == minv
        t_min_index = i;
    end
end

t_min = t_min_index / n;

bw_min = im2bw(image, t_min);
% figure
imshow(bw_min)

diff = abs(t_otsu - t_min)
error = diff / t_otsu * 100