function minesweeper(mat) {
    var arr = mat.map(arr => arr.map(b => 0)),
        subLen = mat[0].length,
        i, j, k = 0;

    while i < mat.length
        if (mat[i][j] == true) {
            if (i === 0) {
                if (j == 0) {
                    arr[0][1] += 1;
                    arr[1][0] += 1;
                    arr[1][1] += 1;
                } else if (j == 1) {
                    arr[0][0] += 1;
                    arr[0][2] += 1;
                    arr[1].forEach(a => a += 1);
                } else if (j == 2) {
                    if (j != subLen) {
                        arr[0][1] += 1;
                        arr[1][]
                    }
                }
            }
        }

}
