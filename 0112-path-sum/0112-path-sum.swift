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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {
            return false
        }
        return hasPathSumHelper(root, targetSum, 0)
    }
    
    func hasPathSumHelper(_ root: TreeNode?, _ targetSum: Int,  _ currentSum: Int) -> Bool {
        if root == nil {
            return false
        }
        if root?.left == nil, root?.right == nil {
            return currentSum + root!.val == targetSum
        }

        return hasPathSumHelper(root?.left, targetSum, currentSum + root!.val) || hasPathSumHelper(root?.right, targetSum, currentSum + root!.val)
       
        
    }
}