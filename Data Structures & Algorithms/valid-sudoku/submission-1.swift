class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Int: Set<Character>]()
        var cols = [Int: Set<Character>]()
        var boxes = [String: Set<Character>]()
        for row in 0..<board.count {
            for col in 0..<board[0].count {
                let element = board[row][col]

                if element == "." { continue }

                let boxesKey = "\(row / 3),\(col / 3)"
                guard !(rows[row]?.contains(element) == true || cols[col]?.contains(element) == true || boxes[boxesKey]?.contains(element) == true) else {
                    return false
                }
                rows[row, default: []].insert(element)
                cols[col, default: []].insert(element)
                boxes[boxesKey, default: []].insert(element)

            }
        }
        return true
        // // Brute force: check every row, then every column then every box
        // let cols = board.count
        // let rows = board[0].count

        // //check rows
        // var currentSet: Set<Character> = []
        // for row in 0..<rows {
        //     for col in 0..<cols {
        //         let element = board[col][row]
        //         if element == "." {
        //             continue
        //         }
        //         if currentSet.contains(element) {
        //             return false
        //         }
        //         currentSet.insert(element)
        //     }
        //     currentSet = []
        // }

        // // check columns
        // currentSet = []
        // for col in 0..<cols {
        //     for row in 0..<rows {
        //         let element = board[col][row]
        //         if element == "." {
        //             continue
        //         }
        //         if currentSet.contains(element) {
        //             return false
        //         }
        //         currentSet.insert(element)
        //     }
        //     currentSet = []
        // }

        // //check boxes
        // currentSet = []
        // let boxCenters = [(1,1), (4,1), (7,1), (1,4), (1,7), (4,4), (4, 7), (7, 4), (7,7)]
        // for center in boxCenters {
        //     for xOffset in [-1, 0, 1] {
        //         for yOffset in [-1, 0, 1] {
        //             if xOffset == 0, yOffset == 0 {
        //                 continue
        //             }
        //             let element = board[center.0 + xOffset][center.1 + yOffset]
        //             if element == "." { continue }
        //             print(element, center, xOffset, yOffset)
        //             if currentSet.contains(element) {
        //                 return false
        //             }
        //             currentSet.insert(element)
        //         }
        //     }
        //     currentSet = []
        // }

        // return true
    }
}
