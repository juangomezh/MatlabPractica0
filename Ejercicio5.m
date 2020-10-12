figure("Name",  "Figuras", 'Position', [10 10 700 600])
subplot(2,2,[1,2])
[X,Y] = meshgrid(-5:5, -5:5);
Z = Y * sin(pi * (X/10)) + 5 * cos((X^2 + Y^2)/8)+ cos(X + Y)* cos(3*X - Y)
s = surf(X,Y,Z)
xlabel("Eje X")
ylabel("Eje Y")
zlabel("Eje Z")
s.EdgeColor = 'none';
s.FaceColor = 'interp';
subplot(2,2,3)
contourf(X,Y,Z)
xlabel("Eje X")
ylabel("Eje Y")
zlabel("Eje Z")

subplot(2,2,4)
mesh(X,Y,Z)
xlabel("Eje X")
ylabel("Eje Y")
zlabel("Eje Z")