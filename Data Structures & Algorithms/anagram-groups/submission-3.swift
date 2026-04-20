class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups = [String: [String]]()

        for str in strs {
            groups[String(str.sorted()), default: []].append(str)
        }

        return groups.values.map { $0 }
    }
}