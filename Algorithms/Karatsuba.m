% Fast multiplication algorithm of two n digit numbers x and y using hte
% Karatsuba algorithm
%
% Inputs
%   numberA: an integer with n digits
%   numberB: an integer with n digits
% 
% Terms:
%   high: when the n digit number is sliced, high is the first half
%   low: when the n digit number is liced, low is the second half

function result  = Karatsuba(numA, numB)
    
    numASym = sym(numA);
    numBSym = sym(numB);
    numAStr = char(numASym);
    numBStr = char(numBSym);

    if numA < 10 || numB < 10
        result = numA * numB;
        return 
    end
    
    n  = numel(numAStr);
    idx  = n / int32(2);
    base = 10;
    
    a =  NumSplit(numA, idx, 1);
    b =  NumSplit(numA, idx, 0);
    c =  NumSplit(numB, idx, 1);
    d  =  NumSplit(numB, idx, 0);  
    
    ac = Karatsuba(a, c);
    ad = Karatsuba(a, d);
    bc = Karatsuba(b, c);
    bd = Karatsuba(b, d);
    
    result = ac*base^n + (ad + bc)*base^(n/2) + bd;
    
end 
