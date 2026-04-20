/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let node = root else { return [] }
        var queue = [(Int, TreeNode)]()
        var res = [Int: [Int]]()
        queue.append((0, node))

        while !queue.isEmpty {
            let (level, curr) = queue.removeFirst()
            res[level, default: []].append(curr.val)
            
            if let left = curr.left { queue.append((level + 1, left)) }
            if let right = curr.right { queue.append((level + 1, right)) }
        }

        return res.sorted { $0.key < $1.key }.map { $0.value }
    }
}
