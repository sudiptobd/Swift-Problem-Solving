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
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        let right = root?.right
        root?.right = invertTree(root?.left)
        root?.left = invertTree(right)
        return root
    }
    
    func invertTreex(_ root: TreeNode?) -> TreeNode? {
        let q = Queue<TreeNode?>()
        q.push(root)
        while !q.isEmpty() {
            if let node = q.pop() {
                let l = node?.left
                let r = node?.right
                node?.right = l
                node?.left = r
                
                if let l = l {
                    q.push(l)
                }
                if  let r = r {
                    q.push(r)
                }
            }
            
        }
        return root
    }
}

let root = TreeNode(2)
root.left = TreeNode(1)
root.right = TreeNode(3)

dfs(root)

let invertTree = Solution().invertTree(root)

func dfs (_ node: TreeNode?) {
    if let node = node {
        print(node.val, terminator: " ")
        dfs(node.left)
        dfs(node.right)
    }
}

dfs(invertTree)

