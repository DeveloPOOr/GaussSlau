n = randi([2 30],1) 
matrix = randi([1,10000],n,n+1)
b = matrix(:,n+1:n+1)
A = matrix(:, 1:n)
x = (Gaussian_Elimination(matrix, n))'
A*x-b
