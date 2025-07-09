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

func address<T>(of value: inout T) -> String {
    withUnsafePointer(to: &value) {
        .init(format: "0x%lx", Int(bitPattern: $0))
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


func minCuttingCost(_ n: Int, _ m: Int, _ k: Int) -> Int {
    var cost = 0
    if n > k && m > k {
        cost += (n-k)*k
        cost += (m-k)*k
    } else if n > k {
        if m == k {
            cost += (n-k)*k
        } else if m < k {
            let firstCut = k-m
            let secondCut = n-k
            var sum1 = (n-firstCut)*firstCut
            var sum2 = (n-secondCut)*secondCut
            var newM = n - firstCut
            if newM > k {
                sum1 += (newM-k)*k
            }
            
            newM = n - secondCut
            if newM > k {
                sum2 += (newM-k)*k
            }
            cost += min(sum1, sum2)
        }
    } else if m > k {
        if n == k {
            cost += (m-k)*k
        } else if n < k {
            let firstCut = k-n
            let secondCut = m-k
            var sum1 = (m-firstCut)*firstCut
            var sum2 = (m-secondCut)*secondCut
            var newM = m - firstCut
            if newM > k {
                sum1 += (newM-k)*k
            }
            
            newM = m - secondCut
            if newM > k {
                sum2 += (newM-k)*k
            }
            cost += min(sum1, sum2)
        }
    }
    
    return cost
}


//minCuttingCost(11, 4, 5)
//minCuttingCost(4, 4, 6)
//minCuttingCost(4, 1, 2)


let root = TreeNode(2)
root.left = TreeNode(1)
root.right = TreeNode(3)

let solutions = Solution()
print("Hello World")

var str = "Hello World"
for i in stride(from: 0, to: str.count, by: 1) {
    let x = str[str.index(str.startIndex, offsetBy: i)]
    str.append(x)
}








//print(solutions.rob([1,2,3,1]))



//var x = [10, 11, 12]
//var y = Person(name: "Hello")
//var z = Person(name: "Bello")
//address(of: &x)
//address(of: &y)
//address(of: &z)
//
//func fib() -> Int {
//    var a = 1
//    var b = 1
//    var sum = 0
//    while a+b <= 4000000 {
//        let c = a + b
//        a = b
//        b = c
//        if b % 2 == 0 {
//            sum += b
//        }
//    }
//    return sum
//}
//
//@propertyWrapper
//struct Hello {
//    var value: String
//    init(wrappedValue: String) {
//        self.value = wrappedValue.uppercased()
//    }
//
//    var wrappedValue: String {
//        get { value }
//        set { value = newValue.uppercased() }
//    }
//}
//
//struct A {
//    @Hello
//    var x: String
//}
//
//var a = A(x: "abcd")


extension Int {
    mutating func increment( by value: Int) {
        self += value
    }
}

var dict = [Int: Int]()
dict[1, default: 0].increment(by: 1)
dict[1, default: 0].increment(by: 1)

print(dict)
