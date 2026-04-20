class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var ptr1 = m - 1, ptr2 = n - 1, i = nums1.count - 1

        while ptr1 >= 0, ptr2 >= 0 {
            if nums2[ptr2] >= nums1[ptr1] {
                nums1[i] = nums2[ptr2]
                ptr2 -= 1
            } else {
                nums1[i] = nums1[ptr1]
                ptr1 -= 1
            }
            i -= 1
        }

        while ptr2 >= 0 {
            nums1[i] = nums2[ptr2]
            i -= 1
            ptr2 -= 1
        }
    }
}