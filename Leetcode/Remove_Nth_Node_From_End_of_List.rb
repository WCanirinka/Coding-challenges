# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    fast, slow = head, head

    n.times { fast = fast.next }
    return head.next if fast.nil?

    fast, slow = fast.next, slow.next while fast.next
    slow.next = slow.next.next
    return head
end