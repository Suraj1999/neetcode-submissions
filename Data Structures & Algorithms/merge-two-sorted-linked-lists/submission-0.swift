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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2
         var dummyNode: ListNode? = ListNode(Int.min)

         var headNode = dummyNode

         while (l1 != nil && l2 != nil) {
            if l1!.val < l2!.val {
                dummyNode?.next = l1
                l1 = l1?.next
            } else {
                dummyNode?.next = l2
                l2 = l2?.next
            }

            dummyNode = dummyNode?.next
         }

         if l1 == nil {
            dummyNode?.next = l2
         } 

         if l2 == nil {
            dummyNode?.next = l1
         }

         return headNode?.next
    }
}
