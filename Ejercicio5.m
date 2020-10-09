[X,Y] = meshgrid(-5:5, -5:5);
Z = Y * sin(pi * (X/10)) + 5 * cos((X^2 + Y^2)/8)+ cos(X + Y)* cos(3*X - Y)
surf(X,Y,Z)
xlabel("Eje X")
ylabel("Eje Y")
zlabel("Eje Z")