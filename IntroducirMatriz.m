function A = IntroducirMatriz(dimensiones)

A = []
flag = 0
disp("MATRIZ A")
i = 1
while (i <= dimensiones(1, 1) && flag == 0)
    matrizAux = []
    j=1
    while (j <= dimensiones(1, 2) && flag == 0) 
        valor = input("Introduzca el numero de la posicion (si se introduce r, sera una matriz aleatoria): ", 's')
        if(valor == "r")
            uno = dimensiones(1, 2) - j + 1
            dos = dimensiones(1, 1) - i
            matrizAux = [matrizAux randi(100, 1, dimensiones(1, 2) - j + 1)]
            matrizAux = [matrizAux; randi(100, dimensiones(1, 1) - i, dimensiones(1, 2))]
            flag = 1
        else
            matrizAux = [matrizAux str2double(valor)]
        end
        j = j+1
    end
    i = i+1
    A = [A; matrizAux]
end

