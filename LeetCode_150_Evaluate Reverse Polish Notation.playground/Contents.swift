import Foundation

class Stack {
    var ara: [Int]
    init() {
        self.ara = []
    }
    
    func push(_ x: Int) {
        ara.append(x)
    }
    
    func pop() -> Int? {
        guard !ara.isEmpty else { return nil }
        return ara.removeLast()
    }
    
    func top() -> Int? {
        return ara.last
    }
    
    func isEmpty() -> Bool {
        return ara.isEmpty
    }
    
    func size () -> Int {
        return ara.count
    }
}


 
func evalRPN(_ tokens: [String]) -> Int {
    let stack = Stack()
    for token in tokens {
        switch token {
        case "+":
            let b = Int(stack.pop()!)
            let a = Int(stack.pop()!)
            stack.push(a+b)
        case "-":
            let b = Int(stack.pop()!)
            let a = Int(stack.pop()!)
            stack.push(a-b)
        case "*":
            let b = Int(stack.pop()!)
            let a = Int(stack.pop()!)
            stack.push(a*b)
        case "/":
            let b = Int(stack.pop()!)
            let a = Int(stack.pop()!)
            stack.push(a/b)
        default : stack.push(Int(token)!)
        }
    }
    return stack.top() ?? 0
}

let tokens = ["4","13","5","/","+"]
let tokens2 = ["2","1","+","3","*"]
let tokens3 = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
evalRPN(tokens)
evalRPN(tokens2)
evalRPN(tokens3)
