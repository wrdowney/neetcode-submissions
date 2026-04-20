class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var res: [[Int]] = []

        for i in 0..<sortedNums.count {
            if sortedNums[i] > 0 {
                break
            }

            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }

            var L: Int = i + 1
            var R: Int = sortedNums.count - 1

            while L < R {
                let threeSum = sortedNums[i] + sortedNums[L] + sortedNums[R]

                if threeSum > 0 {
                    R -= 1
                }
                else if threeSum < 0 {
                    L += 1
                }
                else if threeSum == 0 {
                    res.append([sortedNums[i], sortedNums[L], sortedNums[R]])
                    L += 1
                    R -= 1

                    // using this to avoid duplicates
                    while L < R, sortedNums[L] == sortedNums[L - 1] {
                        L += 1
                    }
                }
            }

        }

        return res
    }
}
