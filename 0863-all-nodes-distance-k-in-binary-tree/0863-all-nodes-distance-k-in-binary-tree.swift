/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
        var parentDict = [Int : TreeNode]()
        fillParents(root, &parentDict)
        var result = [Int]()
        var visited = Set<Int>()
        traversal(target, &parentDict, &result, k, &visited)
        return result
    }
    
    func traversal(_ root : TreeNode?, _ parentDict : inout [Int : TreeNode], _ result : inout [Int], _ currentDistance : Int, _ visited : inout Set<Int>) {
        if root == nil {
            return
        }
        if visited.contains(root!.val) {
            return
        }
        visited.insert(root!.val)
        if currentDistance < 0 {
            return
        }
        if currentDistance == 0{
            result.append(root!.val)
            return
        }
        traversal(root?.left, &parentDict, &result, currentDistance - 1, &visited)
        traversal(root?.right, &parentDict, &result, currentDistance - 1, &visited)
        traversal(parentDict[root!.val], &parentDict, &result, currentDistance - 1, &visited)
    }
    
    func fillParents(_ root: TreeNode?, _ parentDict : inout [Int : TreeNode]) {
        var queue = [TreeNode]()
        if root != nil {
            queue.append(root!)
        }
        while !queue.isEmpty {
            let size = queue.count
            for _ in 0..<size {
                let node = queue.removeLast()
                if let left = node.left {
                   parentDict[left.val] = node
                   queue.append(left) 
                }
                if let right = node.right {
                   parentDict[right.val] = node
                   queue.append(right) 
                }
            }
        }
    }
}