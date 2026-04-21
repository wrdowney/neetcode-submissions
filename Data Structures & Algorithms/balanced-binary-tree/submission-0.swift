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
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let node = root else { return true }
        let balancedAtCurrentNode = abs(maxHeight(node.left) - maxHeight(node.right)) <= 1
        return balancedAtCurrentNode && isBalanced(node.left) && isBalanced(node.right)
    }

    private func maxHeight(_ node: TreeNode?) -> Int {
        guard let node else { return 0 }
        return 1 + max(maxHeight(node.left), maxHeight(node.right))
    }
}
