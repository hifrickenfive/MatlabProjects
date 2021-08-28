function C = MergeSort(A)

    if numel(A) == 1
        C = A;
        return
    end
    
    if mod(numel(A), 2)
        idxSplit = numel(A) / 2 + 0.5;
    else
        idxSplit = numel(A) / 2;
    end

    A1 = A(1:idxSplit);
    A2  = A(idxSplit+1:end);

    A1 = MergeSort(A1);
    A2 = MergeSort(A2);

    C = [];
    while numel(A1) >=1 && numel(A2) >= 1
        if A1(1) > A2(1)
            C = [C, A2(1)];
            A2 = A2(2:end);
        else
            C = [C, A1(1)];
            A1 = A1(2:end);
        end
    end 

    while numel(A1) >= 1
        C = [C, A1(1)];
        A1 = A1(2:end);
    end 

    while numel(A2) >= 1
        C = [C, A2(1)];
        A2 = A2(2:end);
    end 

 end