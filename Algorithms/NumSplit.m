function result = NumSplit(num, idx, flag)
    numSym = sym(num);
    numStr = char(numSym);

    switch flag
        case 1 % High
            resultStr = numStr(1:idx);
        case 0 % Low
            resultStr  = numStr(idx+1:end);
    end

    result = str2num(resultStr);
end 