%1_1
A = [1 2; 3 4; 5 6; 7 8]
v = [14 ; 16 ; 18 ; 20 ]

B = [A v]

disp(B)

%1_2_1
vector2 = []
for i = 1:height(B)
    vector2 = [vector2 B(i,:)]
end

%1_2_2
index = 1
[altura, columnas] = size(B)
for i = 1:(altura)
    for j = 1:(columnas)
        vector(1, index) = B(i, j)
        index = index+1
    end
end

disp(vector2)
disp(vector )

%1_3
vector3 = []
for i = 1:(columnas)
    vector3 = [vector3; B(:,i)]
end 

disp(vector3)