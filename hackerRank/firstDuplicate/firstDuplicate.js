function firstDuplicate(a) {
    let mySet = new Set();

    for (let i of a) {
        if (mySet.has(i)) {
            return i;
        }
        mySet.add(i)
    }
    return -1;
}
