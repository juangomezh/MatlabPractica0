function [solucion, reales, complejas] = raices(poli_1, poli_2)
eleccion = input("poli_1 [1],\npoli_2 [2],\npoli_2 * poli_1 [3]: ")
solucion = []
switch eleccion
    case 1
        solucion = roots(poli_1)
    case 2
        solucion = roots(poli_2)
    case 3
        solucion = roots(conv(poli_1,poli_2))
end
reales = 0
complejas = 0
disp(height(solucion))
for i = 1: height(solucion)
    if(isreal(solucion(i, 1)))
        reales = reales + 1
    else
        complejas = complejas + 1
    end
end
