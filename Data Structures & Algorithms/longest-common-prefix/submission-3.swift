class TrieNode {
    var children = [Character: TrieNode]()
}

class Trie {
    var root = TrieNode()

    func insert(_ word: String) {
        var node = root
        for c in word {
            if node.children[c] == nil {
                node.children[c] = TrieNode()
            }
            node = node.children[c]!
        }
    }

    func lcp(_ word: String, _ prefixLen: Int) -> Int {
        var node = root
        let chars = Array(word)
        var i = 0
        while i < min(chars.count, prefixLen) {
            if node.children[chars[i]] == nil {
                return i
            }
            node = node.children[chars[i]]!
            i += 1
        }
        return min(chars.count, prefixLen)
    }
}

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs[0]
        }

        var mini = 0
        for i in 1..<strs.count {
            if strs[i].count < strs[mini].count {
                mini = i
            }
        }

        let trie = Trie()
        trie.insert(strs[mini])
        var prefixLen = strs[mini].count

        for i in 0..<strs.count {
            prefixLen = trie.lcp(strs[i], prefixLen)
        }

        return String(strs[0].prefix(prefixLen))
    }
}