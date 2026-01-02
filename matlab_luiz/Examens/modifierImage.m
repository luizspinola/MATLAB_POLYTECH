function [result, nb] = modifierImage(K, X, Y)
 %Il s'agit de remplacer tous les pixels de l'image initiale K ayant la valeur X par la valeur X+Y. nb contiendra le nombre de pixels qui ont été traités
if isa(K, 'uint8') && (X + Y > 255)
    newValue = 255;
end
if isa(K, 'uint8') && (X + Y <= 255)
    newValue = X + Y;
end
if isa(K, 'uint12') && (X + Y > 4095)
    newValue = 4095;
end
if isa(K, 'uint12') && (X + Y <= 4095)
    newValue = X + Y;
end
if isa(K, 'uint16') && (X + Y > 65535)
    newValue = 255;
end
if isa(K, 'uint16') && (X + Y <= 65535)
    newValue = X + Y;
end

result = K;
result(result == X) = newValue;
nb = sum(K(:) == X);

end