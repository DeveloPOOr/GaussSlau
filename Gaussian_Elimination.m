function x = Gaussian_Elimination(A,n)
    x = zeros(1,n);
    format long g;
    for i = 1:n -1    
        for p = i:n
            Api = A(p,i);
            if Api == 0
                disp('No Unique Solution')
                return
            end
        end
        if ~ p == i
            temp = A(p,:);
            A(p,:) = A(i,:);
            A(i,:) = temp;
        end
        for j = i+1:n
            m = A(j,i)/A(i,i);
            E = A(j,:);
            A(j,:) = E + -m * A(i,:);
        end
    end

    if A(n,n) == 0
        disp('NO UNIQUE SOLUTION EXiSTS');
        return
    end
    x(n) = A(n,n+1)/A(n,n);
    for i = n-1:-1:1
        aNext = A(i,n+1);
        denominator = A(i,i);
        sumValue = 0;
        for j = i+1:n
            tempSum = A(i,j) * x(j);
            sumValue = sumValue + tempSum;
        end
        x(i) = (aNext - sumValue) / denominator;
    end
end

