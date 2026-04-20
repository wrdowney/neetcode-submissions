class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        // return (0..<nums.count).map { idx in
        //     var filteredNums = nums
        //     filteredNums.remove(at: idx)
        //     return filteredNums.reduce(1,*)
        // }
        let product = nums.filter { $0 != 0 }.reduce(1, *)
        let numZeroes = nums.filter { $0 == 0 }.count
        var emptyArray = Array(repeating: 0, count: nums.count)
        if numZeroes > 1 {
            return emptyArray
        } else if numZeroes == 1 {
            guard let zeroIdx = nums.firstIndex(of: 0) else {
                return emptyArray
            }
            emptyArray[zeroIdx] = product
            return emptyArray
        } else {
            return nums.map { product / $0 }
        }
    }
}
