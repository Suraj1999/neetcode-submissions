/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
         var fast = head
         var slow = head

         if head == nil {
            return false
         }

         if head?.next == nil {
            return false
         }

         while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next

            if fast === slow {
                return true
            }
         }

         return false
    }
}
