%1
A = [2 10 0 7;
     2 7  7 1;
     1 9  0 5;
     4 0  0 6;
     2 8  4 1;
    10 5  0 3;
     2 6  4 0;
     1 2  9 3;
     6 4  8 2;
     0 3  0 9]

b = [90; 59; 15; 10; 80; 17; 93; 51; 41; 76]

A2 = [1.110 0 1 0;
     0 3.260 0 1;
     0.425 0 1 0;
     0 3.574 0 1;
     0.739 0 1 0;
     0 3.888 0 1;
     1.054 0 1 0;
     0 4.202 0 1;
     3.368 0 1 0;
     0 4.516 0 1]

b2 = [317; 237; 319; 239; 321; 241; 323; 243; 325; 245]
%2
%a)
newMatriz = rref([A b])
newMatriz = newMatriz(1: rank(A), 1:rank(A))
det(newMatriz)
newMatriz2 = rref([A2 b2])
newMatriz2 = newMatriz2(1: rank(A2), 1:rank(A2))
det(newMatriz)
%b)
ResSinRuido = linsolve(A, b)
     
%c)
vectorAleatorio = 1.*randn(height(b),1) + 0
ResConRuido = linsolve(A, b+vectorAleatorio)

%d)
clc
disp("MATRIZ SIN RUIDO")
disp(ResSinRuido)
disp("MATRIZ CON RUIDO")
disp(ResConRuido)
     