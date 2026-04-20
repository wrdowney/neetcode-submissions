class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0

        var L = 0 
        var R = height.count - 1

        while L < R {
            let area = (R - L) * min(height[L], height[R])
            maxArea = max(area, maxArea)
            if height[L] < height[R] {
                L += 1
            } else {
                R -= 1
            }
        }
        return maxArea
    }
}
