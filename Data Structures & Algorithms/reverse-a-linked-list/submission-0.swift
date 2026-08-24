class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var p = head
        var q = head
        var r: ListNode? = nil

        while p != nil {
            p = q?.next
            q?.next = r
            r = q
            q = p
        }

        return r
    }
}