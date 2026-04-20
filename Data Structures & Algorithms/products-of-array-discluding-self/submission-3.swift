class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        // We want to return product of all nums / current num but zeros cause problems
        let product = nums.filter { $0 != 0 }.reduce(1, *)
        let numZeroes = nums.filter { $0 == 0 }.count
        var emptyArray = Array(repeating: 0, count: nums.count)
        // If more than 1 zero entire array will be zeros
        if numZeroes > 1 {
            return emptyArray
        // Exactly 1 zero, the element at the index of the zero will be the only non-zero
        } else if numZeroes == 1 {
            guard let zeroIdx = nums.firstIndex(of: 0) else {
                return emptyArray
            }
            emptyArray[zeroIdx] = product
            return emptyArray
        // Now we can use product of all nums / current num
        } else {
            return nums.map { product / $0 }
        }
    }
}
