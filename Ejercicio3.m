dimensiones = input("Introduzca las dimensiones de la matriz [x y]/[x]: ")
nArgs = size(dimensiones)
if(nArgs(1, 2)==1)
    dimensiones = [dimensiones dimensiones]
end
A = IntroducirMatriz(dimensiones)
B = IntroducirMatriz(dimensiones)

determinante = det(A)
rango = rank(A)
traspuesta = transpose(A)
inversa = []
if(determinante~=0)
    inversa = inv(A)
    disp("No se tiene inversa")
end
multiplicacion = []
if(length(A) == height(B))
    multiplicacion = A*B
    disp("No se pueden multiplicar")
end
vectorFila = [A(1,:) B(1,:)]
vectorColumna = [A(:,1); B(:,1)]

clc
disp(A)
disp(B)
disp(vectorFila)
disp(vectorColumna)