class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var dict1: [Character: Int] = [:]
        var dict2: [Character: Int] = [:]
        for c in Array(s) {
            dict1[c, default: 0] += 1
        }

        for c in Array(t) {
            dict2[c, default: 0] += 1
        }
        
        for key in dict1.keys {
            if dict1[key] != dict2[key] {
                return false
            }
        }
        return true
    }
}
