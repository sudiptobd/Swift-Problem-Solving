import Foundation

//let a = [1,2,3,4,5]
//let sum = a.reduce(0) { partialResult, value in
//    partialResult + value
//}



let s: String = "a"
let c: Character = Character(s)
let n: Int = Int(c.asciiValue!)
let sc = UnicodeScalar(n)!
let cs: Character = Character(sc)
let d: Double = Double(n)
let id: Int = Int(d)
var set = Set<[Int]>()
set.insert([1,2,3])
set.insert([2,1,3])
set.remove([2,1,4])

set.contains([1,2,3])
var array = Array(set)
array += [[123]]
array.append([234])
array.append(contentsOf:[[234]])
let last = array.removeLast()
let first = array.removeFirst()


//print(array)
let string = "abcdef"
let x = string.split(separator: "c", omittingEmptySubsequences: true)
var sx: String = String(x.first!)
sx += "x"
let index = string.index(string.startIndex, offsetBy: 1)
let substring = string[string.startIndex...index]

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

