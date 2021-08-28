% TestKaratsuba is a MATLAB unit test for Karatsuba multiplication function
%
% Usage: In the MATLAB command window type: runtests('TestKaratsuba')

clc; clear all

% numA = 5678;
% numB = 1234;
% actualResult = Karatsuba(numA, numB)
% expectedResult = numA * numB

% numA = 999999;
% numB = 888888;
% actualResult = Karatsuba(numA, numB)
% disp(num2str(actualResult,'%.2f'))
% expectedResult = numA * numB
% 
numA = 777777;
numB = 777777;
actualResult = Karatsuba(numA, numB)
output = sym(Karatsuba(numA, numB))
expectedResult = sym(numA * numB)




%% 
% numA = 3141592653589793238462643383279502884197169399375105820974944592;
% numB = 2718281828459045235360287471352662497757247093699959574966967627;
% output = sym(Karatsuba(numA, numB))