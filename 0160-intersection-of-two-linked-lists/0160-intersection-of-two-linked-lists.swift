/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var len1 = 0
        var len2 = 0
        
        var temp1 = headA
        while temp1 != nil {
            len1 += 1
            temp1 = temp1?.next
        }
        
        var temp2 = headB
        while temp2 != nil {
            len2 += 1
            temp2 = temp2?.next
        }
        
        temp1 = headA
        temp2 = headB
        
        if len2 > len1 {
            temp1 = headB
            temp2 = headA
            let len = len1
            len1 = len2
            len2 = len
        }
        
        while len1 != len2 {
            if len1 > len2 {
                temp1 = temp1?.next
                len1 -= 1
            } else {
                temp2 = temp2?.next
                len2 -= 1
            }
            
        }

        while temp1 !== temp2 && (temp1 != nil || temp2 != nil) {
            temp1 = temp1?.next
            temp2 = temp2?.next
        }
        
        return temp1
        
    }
}