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
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var result = [[Int]]()
        pathSumHelper(root, targetSum, [], &result)
        return result
    }
    
    func pathSumHelper(_ root: TreeNode?, _ currentSum: Int, _ path : [Int], _ result : inout [[Int]]){
        if root == nil {
            return
        }
        var newPath = path
        newPath.append(root!.val)
        if root!.left == nil, root!.right == nil {
            if currentSum - root!.val == 0 {
                result.append(newPath)
                return
            } else {
                return
            }
        }
        pathSumHelper(root?.left, currentSum - root!.val, newPath, &result)
        pathSumHelper(root?.right, currentSum - root!.val, newPath, &result)
    }
}