import Foundation

class Stack<T> {
    var ara: [T]
    init() {
        self.ara = []
    }
    
    func push(_ x: T) {
        ara.append(x)
    }
    
    func pop() -> T? {
        guard !ara.isEmpty else { return nil }
        return ara.removeLast()
    }
    
    func top() -> T? {
        return ara.last
    }
    
    func isEmpty() -> Bool {
        return ara.isEmpty
    }
    
    func size () -> Int {
        return ara.count
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
    func goodNodes(_ root: TreeNode?) -> Int {
        dfs(node: root, max: root?.val ?? 0)
    }
    
    func dfs(node: TreeNode?, max: Int) -> Int {
        guard let node else { return 0 }
        if max <= node.val {
            return 1 + dfs(node: node.left, max: node.val) + dfs(node: node.right, max: node.val)
        } else {
            return dfs(node: node.left, max: max) + dfs(node: node.right, max: max)
        }
    }
}

let root = TreeNode(3)
root.left = TreeNode(1)
root.right = TreeNode(4)
root.left?.left = TreeNode(3)
root.left?.right = nil
root.right?.left = TreeNode(1)
root.right?.right = TreeNode(5)

let rootx = TreeNode(3)
rootx.left = TreeNode(3)
rootx.right = nil
rootx.left?.left = TreeNode(4)
rootx.left?.right = TreeNode(2)

let s = Solution()
s.goodNodes(root)
s.goodNodes(rootx)
