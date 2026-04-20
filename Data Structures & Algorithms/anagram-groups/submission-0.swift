class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [[String]] = []
        var resultDict: [[Character]: [String]] = [:]
        for str in strs {
            let sortedStr = str.sorted()
            resultDict[sortedStr, default:[]].append(str)
        }
        for value in resultDict.values {
            result.append(value)
        }
        return result
    }
}