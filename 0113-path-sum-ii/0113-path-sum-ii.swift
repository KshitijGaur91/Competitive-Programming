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
        var currentPath = [Int]()
        pathSumHelper(root, targetSum, &currentPath, &result)
        return result
    }
    
    func pathSumHelper(_ root: TreeNode?, _ currentSum: Int, _ currentPath : inout [Int], _ result : inout [[Int]]){
        if root == nil {
            return
        }
        currentPath.append(root!.val)
        if root!.left == nil, root!.right == nil {
            if currentSum - root!.val == 0 {
                result.append(currentPath)
                return
            } else {
                return
            }
        }
        pathSumHelper(root?.left, currentSum - root!.val, &currentPath, &result)
        if root?.left != nil {
            currentPath.removeLast()
        }
        pathSumHelper(root?.right, currentSum - root!.val, &currentPath, &result)
        if root?.right != nil {
            currentPath.removeLast()
        }
    }
}