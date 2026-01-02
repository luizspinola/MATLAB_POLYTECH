function im_out = ajouterBruit(im_in, v_max)

im_out = im_in + randi(v_max,size(im_in,1),size(im_in,2),'uint8');


end