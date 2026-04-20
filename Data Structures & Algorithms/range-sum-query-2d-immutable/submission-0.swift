class NumMatrix {
    var sumMat: [[Int]]

    init(_ matrix: [[Int]]) {
        let rows = matrix.count, cols = matrix[0].count
        sumMat = Array(repeating: Array(repeating: 0, count: cols + 1), count: rows + 1)

        for row in 0..<rows {
            var prefix = 0
            for col in 0..<cols {
                prefix += matrix[row][col]
                let above = sumMat[row][col + 1]
                sumMat[row + 1][col + 1] = prefix + above
            }
        }
    }

    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        let row1 = row1 + 1, col1 = col1 + 1, row2 = row2 + 1, col2 = col2 + 1
        let bottomLeft = sumMat[row2][col2]
        let above = sumMat[row1 - 1][col2]
        let left = sumMat[row2][col1 - 1]
        let topRight = sumMat[row1 - 1][col1 - 1]
        return bottomLeft - above - left + topRight
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
