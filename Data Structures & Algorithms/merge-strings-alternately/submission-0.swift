class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var word1Ptr = 0, word2Ptr = 0
        var firstWord = Array(word1), secondWord = Array(word2)
        var res = [Character]()

        while word1Ptr < word1.count, word2Ptr < word2.count {
            if word1Ptr > word2Ptr {
                res.append(secondWord[word2Ptr])
                word2Ptr += 1
            } else {
                res.append(firstWord[word1Ptr])
                word1Ptr += 1
            }
        }

        while word1Ptr < word1.count {
            res.append(firstWord[word1Ptr])
            word1Ptr += 1
        }

        while word2Ptr < word2.count {
            res.append(secondWord[word2Ptr])
            word2Ptr += 1
        }
        return String(res)
    }
}