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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
         var dummy: ListNode? = ListNode(Int.min)
         dummy?.next = head

         var first = dummy
         var second = dummy

         for _ in 0..<n {
            second = second?.next
         }

         while second?.next != nil {
            first = first?.next
            second = second?.next
         }

         first?.next = first?.next?.next

         return dummy?.next
    }
}
