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
    func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSum = Int.min
        maxPathSumHelper(root, &maxSum)
        return maxSum
    }
    
    func maxPathSumHelper(_ root: TreeNode?, _ maxSum : inout Int) -> Int {
        if root == nil {
            return 0
        }
        let leftMaxSum = maxPathSumHelper(root?.left, &maxSum)
        let rightMaxSum = maxPathSumHelper(root?.right, &maxSum)
        let runThroughRootSum = root!.val + leftMaxSum + rightMaxSum
        maxSum = max(maxSum, runThroughRootSum)
        let localPathSum = root!.val + max(leftMaxSum, rightMaxSum)
        return localPathSum > 0 ? localPathSum : 0
    }
}