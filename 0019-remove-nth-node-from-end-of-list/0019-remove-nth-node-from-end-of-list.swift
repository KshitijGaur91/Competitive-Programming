/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var dummyHead = ListNode(-1)
        dummyHead.next = head
        var first = head
        var second = head
        for _ in 0..<n {
            first = first?.next
        }
        var prev : ListNode? = dummyHead
        while first != nil {
            prev = second
            first = first?.next
            second = second?.next
        }
        prev?.next = second?.next

        return dummyHead.next
    }
}