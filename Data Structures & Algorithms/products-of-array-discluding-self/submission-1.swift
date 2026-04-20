class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        return (0..<nums.count).map { idx in
            var filteredNums = nums
            filteredNums.remove(at: idx)
            return filteredNums.reduce(1,*)
        }
        // let product = nums.reduce(1, *)
        // print(product)
        // return nums.map { 
        //     print($0)
        //     guard $0 != 0 else {
        //         return product
        //     }
        //     return product / $0 
        // }
    }
}
