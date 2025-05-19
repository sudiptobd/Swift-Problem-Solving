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
    var dp = [Int](repeating: -10001, count: 100001)
    func maxSubsetSum(arr: [Int]) -> Int {
        helper(arr: arr, index: 0)
    }
    func helper(arr: [Int], index: Int ) -> Int {
        if index >= arr.count {
            return 0
        }
        if dp[index] == -10001 {
            dp[index] = max(arr[index] + helper(arr: arr, index: index + 2), helper(arr: arr, index: index + 1))
            return dp[index]
        }
        return dp[index] == -10001 ? 0 : dp[index]
    }
}

let root = TreeNode(2)
root.left = TreeNode(1)
root.right = TreeNode(3)

let solutions = Solution()
print(solutions.maxSubsetSum(arr: [1,2,3,1]))
