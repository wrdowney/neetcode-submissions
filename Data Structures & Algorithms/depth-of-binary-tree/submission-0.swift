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
        var maxDepth = 0

        func dfs(_ node: TreeNode?, count: Int) {
            guard let node else { 
                maxDepth = max(maxDepth, count)
                return
            }

            var copy = count
            copy += 1

            dfs(node.left, count: copy)
            dfs(node.right, count: copy)
        }

        dfs(root, count: 0)
        return maxDepth
    }
}
