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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
      var t1 = l1 
      var t2 = l2
      var dummy: ListNode? = ListNode(-1)
      var current = dummy
      var carry = 0
      while t1 != nil || t2 != nil {
       var sum = carry
       if t1 != nil {
        sum += t1!.val
       }
       if t2 != nil {
        sum += t2!.val
       }
       var newNode: ListNode? = ListNode(sum%10)
       carry = sum/10

       current?.next = newNode
       current = newNode

       t1 = t1?.next
       t2 = t2?.next
      }

      if carry != 0 {
        var newNode: ListNode? = ListNode(carry)
        current?.next = newNode
        current = newNode
      }

     return dummy?.next
    }
}
