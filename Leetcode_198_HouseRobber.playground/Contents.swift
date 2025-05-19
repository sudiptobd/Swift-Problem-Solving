import Foundation

class Stack<T> {
    var ara: [T]
    init() { self.ara = [] }
    func top() -> T? { return ara.last }
    func isEmpty() -> Bool { return ara.isEmpty }
    func size () -> Int { return ara.count }
    func push(_ x: T) { ara.append(x) }
    func pop() -> T? {
        guard !ara.isEmpty else { return nil }
        return ara.removeLast()
    }
}

class Queue<T> {
    var ara: [T]
    init() { self.ara = [] }
    func top() -> T? { return ara.first }
    func isEmpty() -> Bool { return ara.isEmpty }
    func size () -> Int { return ara.count }
    func push(_ x: T) { ara.append(x) }
    func pop() -> T? {
        guard !ara.isEmpty else { return nil }
        return ara.removeFirst()
    }
}

 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }
 
class Solution {
    var dp = [Int](repeating: -1, count: 101)
    func rob(_ nums: [Int]) -> Int {
        return helper(nums, 0)
    }
    
    func helper(_ nums: [Int], _ index: Int) -> Int {
        if index >= nums.count {
            return 0
        }
        
        if dp[index] >= 0 {
            return dp[index]
        } else {
            dp[index] = max(helper(nums, index+2) + nums[index], helper(nums, index + 1))
        }
        return dp[index]
    }
}

let root = TreeNode(2)
root.left = TreeNode(1)
root.right = TreeNode(3)

let solutions = Solution()
print(solutions.rob([1,2,3,1]))
