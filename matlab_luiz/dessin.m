function myDraw = dessin(a, b)
%étant donnés deux entiers a=3 et b=2 permet de tracer un rectangle
% de largeur a et de longueur b centré en 0 et sur la même figure un 
% cercle de rayon 2*a, également centré en 0.

%plot equation x^2 + y^2 = 2a
theta = linspace(0, 2*pi, 100); 
xCircle = 2*a * cos(theta); 
yCircle = 2*a * sin(theta); 

myDraw = rectangle('Position', [-a/2, -b/2, a, b]); 
hold on; 
plot(xCircle, yCircle); 
axis equal;
grid on;

end