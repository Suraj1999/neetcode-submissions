class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var t1 = l1
        var t2 = l2
        
        let dummy = ListNode(0)
        var current: ListNode? = dummy
        var carry = 0
        
        while t1 != nil || t2 != nil || carry != 0 {
            let val1 = t1?.val ?? 0
            let val2 = t2?.val ?? 0
            
            let sum = val1 + val2 + carry
            
            carry = sum / 10
            
            current?.next = ListNode(sum % 10)
            current = current?.next
            
            t1 = t1?.next
            t2 = t2?.next
        }
        
        return dummy.next
    }
}