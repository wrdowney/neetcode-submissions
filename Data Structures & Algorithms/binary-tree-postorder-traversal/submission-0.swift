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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        func postorder(_ node: TreeNode?) {
            guard let root = node else { return }

            postorder(root.left)
            postorder(root.right)
            res.append(root.val)
        }

        postorder(root)
        return res
    }
}
