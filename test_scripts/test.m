clear;
filename = "test.csv";
data = csvread(filename);

[m, n] = size(data);
k = data(1, 1);
N = data(1, 2);
for i = 2:m+1
    a = data(i, 1) + j*data(i, 2);
    b = data(i, 3) + j*data(i, 4);
    A = data(i, 5) + j*data(i, 6);
    B = data(i, 7) + j*data(i, 8);
    
    [A_float, B_float] = fftc_lib.singleBfly(a, b, k, N);
    error(i, 1) = (A_float - A)/A_float;
    error(i, 2) = (B_float - B)/B_float;
end





