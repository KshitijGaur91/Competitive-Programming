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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return sortedArrayToBSTHelper(nums, 0, nums.count - 1)
    }
    func sortedArrayToBSTHelper(_ nums: [Int], _ left : Int, _ right : Int) -> TreeNode? {
        if left > right {
            return nil
        }
        let mid = (left + right)/2
        let root : TreeNode? =  TreeNode(nums[mid])
        root?.left = sortedArrayToBSTHelper(nums, left, mid - 1)
        root?.right = sortedArrayToBSTHelper(nums, mid + 1, right)
        return root
    }
}