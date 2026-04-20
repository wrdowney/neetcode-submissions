class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Int: [Character]]()
        var cols = [Int: [Character]]()
        var boxes = [String: [Character]]()

        for i in 0..<9 {
            for j in 0..<9 {
                
                let elem = board[i][j]
                if elem == "." { continue }
                let boxIdx = "\(i / 3), \(j / 3)"
                if rows[i]?.contains(elem) == true || cols[j]?.contains(elem) == true || boxes[boxIdx]?.contains(elem) == true { return false }
                rows[i, default: []].append(elem)
                cols[j, default: []].append(elem)
                boxes[boxIdx, default: []].append(elem)
            }
        }
        return true
    }
}
