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
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        var queue = [TreeNode]()
        if root != nil {
            queue.append(root!)
        }
        var isReversed = false
        while !queue.isEmpty {
            let size = queue.count
            var level = [Int]()
            for i in 0..<size {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                level.append(node.val)
            }
            if isReversed {
                result.append(level.reversed())
            } else {
                result.append(level)
            }
            isReversed = !isReversed
        }
        return result
    }
}