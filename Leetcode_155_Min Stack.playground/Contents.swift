import Foundation

class MinStack {
    
    var arr: [Int]
    var smallest: Int

    init() {
        arr = []
        smallest = Int(INT_MAX)
    }
    
    func push(_ val: Int) {
        arr.append(val)
        smallest = min(smallest, val)
    }
    
    func pop() {
        if arr.last == smallest {
            let n = arr.count - 1
            smallest = Int(INT_MAX)
            for i in stride(from: 0, to: n, by: 1) {
                smallest = min(smallest, arr[i])
            }
        }
        arr.removeLast()
    }
    
    func top() -> Int {
        arr.last ?? -1
    }
    
    func getMin() -> Int {
        smallest
    }
}



let minStack = MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin(); // return -3
minStack.pop();
minStack.top();    // return 0
minStack.getMin(); // return -2
 
