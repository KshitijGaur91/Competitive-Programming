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
    func sortList(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }
        var slow = head
        var fast = head
        var temp : ListNode?
        while fast != nil {
            temp = slow
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        temp?.next = nil
        
        let l1 = sortList(head)
        let l2 = sortList(slow)
        
        return sortMerge(l1, l2)
    }
    
    func sortMerge(_ head1 : ListNode?, _ head2 : ListNode?) -> ListNode? {
        var dummyHead = ListNode(-1)
        var temp1 = head1
        var temp2 = head2 
        var temp : ListNode? = dummyHead
        while temp1 != nil, temp2 != nil {
            if temp1!.val < temp2!.val {
                temp?.next = temp1
                temp1 = temp1?.next
                temp = temp?.next
            } else if temp1!.val > temp2!.val {
                temp?.next = temp2
                temp2 = temp2?.next
                temp = temp?.next
            } else {
                temp?.next = temp1
                temp1 = temp1?.next
                temp = temp?.next
                
                temp?.next = temp2
                temp2 = temp2?.next
                temp = temp?.next
            }
        }
         while temp1 != nil {
            temp?.next = temp1
            temp1 = temp1?.next
            temp = temp?.next
        }
        while temp2 != nil {
            temp?.next = temp2
            temp2 = temp2?.next
            temp = temp?.next
        }
        
        return dummyHead.next
    }
}