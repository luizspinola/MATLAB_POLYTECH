function [im_out] = Mosaique(k, i)
im_out = i;

for j = 1:k-1
    im_out = cat(1,im_out,i);
end