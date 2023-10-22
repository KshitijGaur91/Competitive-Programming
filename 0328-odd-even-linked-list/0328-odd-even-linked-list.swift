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
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var len = 0
        var temp = head
        var last : ListNode?
        while temp != nil {
            len += 1
            last = temp
            temp = temp?.next
        }
        var dummyHead = ListNode()
        dummyHead.next = head
        
        var prev : ListNode?
        var current = head
        for index in 0..<len {
            if (index + 1) % 2 == 0, current?.next != nil{
                let nextNode = current?.next
                prev?.next = nextNode
                last?.next = current
                current?.next = nil
                last = current
                current = nextNode
            } else {
                prev = current
                current = current?.next
            }
        }
        
        return dummyHead.next
    }
}