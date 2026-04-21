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
    func maxDepth(_ root: TreeNode?) -> Int {
        // var maxDepth = 0
        // // var visited = Set<Int>()
        // func dfs(on node: TreeNode?) -> Int {
        //     guard let node else { return 0 }
        //     return max()
        // }

        guard let node = root else { return 0 }
        return max(maxDepth(node.right) + 1, maxDepth(node.left) + 1)
    }
}
