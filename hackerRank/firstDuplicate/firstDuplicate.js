function firstDuplicate(a) {
    let lowIndex = [],
        index,
        currArr,
        i;

    for (i = 0; i < a.length - 1; i++) {
        if (i >= lowIndex[0]) {
            break;
        }
        currArr = a.slice(i + 1)
        if (currArr.indexOf(a[i]) > -1) {
            index = currArr.indexOf(a[i]) + i + 1;
            if (index < lowIndex[0] || lowIndex.length == 0) {
                lowIndex.pop();
                lowIndex.push(index)
                // a.splice(0, index);
            }
        }
    }
    return lowIndex.length ? a[lowIndex[0]] : -1;
}
