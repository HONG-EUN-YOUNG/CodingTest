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
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while fast?.next != nil || fast?.next?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next

            if fast === slow {
                return true
            }
        }

        return false
    }
}