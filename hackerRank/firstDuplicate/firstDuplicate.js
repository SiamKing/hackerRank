function firstDuplicate(a) {
    let lowIndex = [],
        currArr,
        i;

    for (i = 0; i < a.length - 1; i++) {
        if (i >= lowIndex[0]) {
            return a[lowIndex[0]];
        }
        currArr = a.slice(i + 1, lowIndex[0])
        if (currArr.includes(a[i])) {
            lowIndex[0] = currArr.indexOf(a[i]) + i + 1;
        }
    }
    return lowIndex.length ? a[lowIndex[0]] : -1;
}
