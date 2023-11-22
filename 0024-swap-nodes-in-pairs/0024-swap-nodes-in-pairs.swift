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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var dummyHead = ListNode()
        dummyHead.next = head
        
        var prev : ListNode? = dummyHead
        var temp : ListNode? = head
        var next : ListNode? = head?.next
        
        while next != nil {
            temp?.next = next?.next
            prev?.next = next
            next?.next = temp
        
            prev = temp
            temp = temp?.next
            next = temp?.next
        }
        
        return dummyHead.next
        
    }
}