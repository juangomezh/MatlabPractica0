function A = IntroducirMatriz(dimensiones)

A = []
flag = 0
disp("MATRIZ A")
i = 1
j = 1
while (i < dimensiones(1, 1) && flag == 0)
    matrizAux = []
    while (j < dimensiones(1, 2) && flag == 0) 
        valor = input("Introduzca el numero de la posicion (si se introduce r, sera una matriz aleatoria): ", 's')
        if(valor == "r")
            matrizAux = randi(100, dimensiones(1, 1), dimensiones(1, 2))
            flag = 1
        else
            matrizAux = [matrizAux valor]
        end
    end
    if(flag == 1)
        A = matrizAux
    else
        A = [A; matrizAux]
    end
end

