% TestMergeSort is a MATLAB unit for MergeSort
%
% Usage: In the MATLAB command window type: runtests('TestMergeSort')

function tests = TestMergeSort
    tests = functiontests(localfunctions);
end

function testFunctionOne(testCase)

    switch testCase
        case 1
            input001 = [5 2 6 1 7 4];
            expectedResult = [1 2 4 5 6 7];
            actualResult = MergeSort(input001);

        case 2
            input002 = [0.5 21.9 6 12 7 4];
            expectedResult = [0.5 4 7 6 12 21.9];
            actualResult = MergeSort(002);
    end

end 

function testFunctionTwo(testCase)
    
end