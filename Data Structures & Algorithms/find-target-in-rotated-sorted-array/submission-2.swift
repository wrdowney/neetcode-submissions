class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 1 { return nums[0] == target ? 0 : -1}
        var l = 0, r = nums.count - 1, pivot = 0, min = nums[0]

        while l <= r {
            if nums[l] < nums[r] {
                if nums[l] < min { 
                    pivot = l
                    min = nums[l]
                }
                break
            }

            var m = (r + l) / 2
            if nums[m] < min {
                pivot = m
                min = nums[m]
            }

            if nums[m] >= nums[l] {
                l = m + 1
            } else {
                r = m - 1
            }
        }

        if target <= nums[nums.count - 1] {
            l = pivot
            r = nums.count - 1
        } else {
            l = 0
            r = pivot - 1
        }
        print(l, r, pivot)
        while l <= r {
            var m = (r + l) / 2
            if target == nums[m] {
                return m
            } else if target < nums[m] {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return -1
    }
}
