/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
       return isValidBSTHelper(root, Int.min, Int.max)
    }
    
    func isValidBSTHelper(_ root: TreeNode?, _ min : Int, _ max : Int) -> Bool {
        guard let root = root else {
            return true
        }
        if root.val < min || root.val > max {
            return false
        }
        return isValidBSTHelper(root.left, min, root.val - 1) && isValidBSTHelper(root.right, root.val + 1, max)
    }
}