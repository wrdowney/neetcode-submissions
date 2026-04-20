class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups = [String: [String]]()

        for str in strs {
            groups[String(str.sorted()), default: []].append(str)
        }

        return Array(groups.values)
    }
}
