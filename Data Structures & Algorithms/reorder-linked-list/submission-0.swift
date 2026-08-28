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
    func reorderList(_ head: ListNode?) {
         
         var slow = head
         var fast = head

         while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
         }

         var prev: ListNode? = nil
         var current = slow?.next

         while current != nil {
            var next = current?.next
            current?.next = prev
            prev = current
            current = next
         }

        slow?.next = nil

        var l1 = head
        var l2 = prev

        while l1 != nil && l2 != nil {
            let next1 = l1?.next
            let next2 = l2?.next

            l1?.next = l2
            l2?.next = next1

            l1 = next1
            l2 = next2
        }
    }
}
