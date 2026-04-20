class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // for i in 0..<numbers.count {
        //     for j in i..<numbers.count {
        //         if target == numbers[i] + numbers[j] {
        //             return [i + 1, j + 1]
        //         }
        //     }
        // }

        // return []
        var left = 0
        var right = numbers.count - 1

        while right > left {
            if numbers[left] + numbers[right] == target {
                return [left + 1, right + 1]
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return []
    }
}