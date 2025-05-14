import Foundation
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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        let right = root?.right
        root?.right = invertTree(root?.left)
        root?.left = invertTree(right)
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

