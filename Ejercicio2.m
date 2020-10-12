%2_1
size = input("introduzca el tamaño de la matriz: ")
vector = []
for i = 1:size
    vectorAux = []
    for j = 1:size
        vectorAux = [vectorAux randi(100)]
    end
    vector = [vector; vectorAux]
end
%Forma Buena
vector = randi(100, size, size)


%2_2
%columnas impares
newVector = []
for i = 1:2:size
    newVector = [newVector vector(:,i)]
end
%diagonal
diagVector = diag(vector)
maximum = max(transpose(vector))
minimum = min(transpose(vector))
media = mean(transpose(vector))
varianza = var(transpose(vector))

clc
disp("\nvector")
disp(vector)
disp("\nnewVector")
disp(newVector)
disp("\ndiagVector")
disp(diagVector)

figure('Name','Data','NumberTitle','off')
ax1 = subplot(2, 1, 1)
x = 1:1:size;
plot(ax1, x, maximum, x, minimum, ':')
xlabel("Minimum (.) / Maximum (-)")

ax2 = subplot(2, 1, 2)
plot(ax2, x, media,':', x, varianza)
xlabel("Media (.) / varianza (-)")

figure('Name','DataReal','NumberTitle','off')
x = 1:1:size;
plot(x, maximum)
hold on
plot(x, minimum, '>')
hold on
plot(x, varianza, '--')
hold on
plot(x, media, ':')



