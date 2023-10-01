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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var traversal = [[Int]]()
        var queue = [TreeNode]()
        if root != nil {
            queue.append(root!)
        }
        while !queue.isEmpty {
            let size = queue.count 
            var level = [Int]()
            for i in 0..<size {
                let rootNode = queue.removeFirst()
                level.append(rootNode.val)
                if let left = rootNode.left {
                    queue.append(left)
                }
                if let right = rootNode.right {
                    queue.append(right)
                }
            }
            traversal.append(level)
        }
        
        return traversal
    }
}