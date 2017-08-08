def firstDuplicate(a)
    let lowIndex = [],
        i,
        j;

    for (i = 0; i < a.length; i++) {
        if (lowIndex[0] < arr[i]) {
            return lowIndex[0];
        }
        for (j = i + 1; j < a.length; j++) {
            if (arr[i] == arr[j]) {
                lowIndex.pop()
                lowIndex.push(j);
                break;
            }
        }
    }
    return -1;
end
