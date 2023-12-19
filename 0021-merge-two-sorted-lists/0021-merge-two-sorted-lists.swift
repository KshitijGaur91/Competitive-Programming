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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode()
        var temp : ListNode? = dummy
        var l1 = list1
        var l2 = list2
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                temp?.next = l1
                l1 = l1?.next
                temp = temp?.next
            }
            else if l2!.val < l1!.val {
                temp?.next = l2
                l2 = l2?.next
                temp = temp?.next
            }
            else {
                temp?.next = l1
                l1 = l1?.next
                temp = temp?.next
                
                temp?.next = l2
                l2 = l2?.next
                temp = temp?.next
            }
        }
        if l1 != nil {
            temp?.next = l1
        }
        
        if l2 != nil {
            temp?.next = l2
        }
        return dummy.next
    }
}