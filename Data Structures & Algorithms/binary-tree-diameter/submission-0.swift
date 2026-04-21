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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        let sub = max(diameterOfBinaryTree(root.left), diameterOfBinaryTree(root.right))

        return max(maxHeight(root.left) + maxHeight(root.right), sub)
    }

    private func maxHeight(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        return 1 + max(maxHeight(root.left), maxHeight(root.right))
    }
}
