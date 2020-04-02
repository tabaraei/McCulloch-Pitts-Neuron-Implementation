clc;
clear;

tresh = 1.5;
x = binaryBuilder(5);
y = ones(1,size(x,1));
weight = [-1 2 -3 1 -2];

for i=1:size(x,1)
    result = 0;
    for j=1:size(x,2)
        result = result + x(i,j)*weight(j);
    end
    if result < tresh
        y(i) = 0;
    else
        y(i) = 1;
    end
end

disp('result');
disp(y);