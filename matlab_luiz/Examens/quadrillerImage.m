function [J] = quadrillerImage(I, X)
%permettant de quadriller une image avec un espacement toutes les X lignes et toutes les Y colonnes.
J = I;
J(1:X:end, :) = 255; 
J(:, 1:X:end) = 255; 

end