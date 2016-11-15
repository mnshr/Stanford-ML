A = magic(5);
B = magic(5);
R = [1 0 1 1 0; 0 1 1 1 0; 1 1 1 1 0; 0 0 0 1 1; 1 0 1 0 1];

C = A*B;
total = 0;
for i = 1:5
    for j = 1:5
        if(R(i,j)==1)
            total = total + C(i,j);
        end
    end
end

totalA = sum(sum((A * B) .* R));
totalB = sum(sum(C(R == 1)));
C = (A*B).*R;
totalC = sum(C(:));
C = A*B;
totalD = sum(sum((A * B) * R));
%totalD = sum(sum(A(R == 1) * B(R == 1)));


total;
totalA;
totalB;
totalC;
totalD;
