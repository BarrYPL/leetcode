def reverse_list(head)
    return head if head.nil? || head.next.nil?
    prev = nil
    current = head
    while current
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
    end
    prev
end
