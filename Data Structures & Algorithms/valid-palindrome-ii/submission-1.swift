class Solution {
    func validPalindrome(_ s: String) -> Bool {
        return checkPalindrome(Array(s), 0, s.count - 1, false)
    }

    private func checkPalindrome(_ chars: [Character], _ left: Int, _ right: Int, _ deleted: Bool) -> Bool {
        var l = left, r = right
        while l < r {
            if chars[l] != chars[r] {
                if deleted { return false }
                return checkPalindrome(chars, l + 1, r, true) || checkPalindrome(chars, l, r - 1, true)
            }
            l += 1
            r -= 1
        }
        return true
    }

    private func isAlphaNum(_ c: Character) -> Bool {
        return c.isLetter || c.isNumber
    }
}