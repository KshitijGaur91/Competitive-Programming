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
    func maxLevelSum(_ root: TreeNode?) -> Int {
        var queue = [TreeNode]()
        if root != nil {
            queue.append(root!)
        }
        var maxSum = Int.min
        var resultLevel = 1
        var currentLevel = 0
        while !queue.isEmpty {
            let size = queue.count
            var levelSum = 0
            currentLevel += 1
            for _ in 0..<size {
                let node = queue.removeFirst()
                levelSum += node.val
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            if levelSum > maxSum {
                maxSum = levelSum
                resultLevel = currentLevel
            }
        }
        return resultLevel
    }
}