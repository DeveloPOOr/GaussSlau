n = randi([2 30],1) 
matrix = randi([1,10000],n,n+1)
b = matrix(:,n+1:n+1)
A = matrix(:, 1:n)
tic
x = (Gaussian_Elimination(matrix, n))'
toc
A*x-b
