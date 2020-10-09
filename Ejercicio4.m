matriz = IntroducirMatriz([1 1])
matriz2 = IntroducirMatriz([25 25])

tiempo1 = 0
tiempo2 = 0

tic
det(matriz)
rank(matriz)
tiempo1 = toc

tic
det(matriz2)
rank(matriz2)
tiempo2 = toc

figure('Name', 'Tiempos de computo')
b = bar([tiempo1 tiempo2])
b.FaceColor = 'flat';
b.CData(1,:) = [.3 0 .9];
b.CData(2,:) = [.5 0 .5];
