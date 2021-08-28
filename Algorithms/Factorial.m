function result = Factorial(n)
    if n == 1
        return
    else
        result = n * factorial(n-1);
    end 
end

