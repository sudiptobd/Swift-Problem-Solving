//
//  HackerRank_RemoveDuplicates.swift
//  
//
//  Created by Sudipto Roy on 7/7/25.
//

import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
    func recall(_ head: ListNode?) {
        
        if let next = head?.next, next.val == head?.val {
            head?.next = next.next
             recall(head)
        } else if let next = head?.next, next.val != head?.val {
             recall(head?.next)
        }

    }

    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        recall(head)
        return head
    }
}
