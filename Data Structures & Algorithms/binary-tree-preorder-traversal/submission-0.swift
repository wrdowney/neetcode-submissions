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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }
        var res = [TreeNode]()
        dfs(root, visited: &res)
        return res.map{ $0.val }
    }

    func dfs(_ node: TreeNode?, visited: inout [TreeNode]) {
        guard let node, !visited.contains(where: { $0.val == node.val }) else { return }

        visited.append(node)

        dfs(node.left, visited: &visited)
        dfs(node.right, visited: &visited)
    }
}
