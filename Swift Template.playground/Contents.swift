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


//88. Merge Sorted Array
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1
    var j = n - 1
    var k = m + n - 1
    while k >= 0 {
        if i >= 0 , j >= 0 {
            nums1[k] = max(nums1[i], nums2[j])
            if nums1[i] > nums2[j] {
                i -= 1
            } else {
                j -= 1
            }
        } else if i >= 0 {
            nums1[k] = nums1[i]
            i -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
        }
        k -= 1
    }
}

// Think from backward
// Start i = m - 1, j = n - 1, k = m+n-1
// while k >= 0 // <<<<<  k = m + n times
// put nums1[k] = max(nums1[i], nums[j])
// decrease i, j, k


//Given an unordered array of integers, return a list of Leaders, where leader is an integer that is strictly greater than all elements to its right. The rightmost element is always included.
//Input:  [16, 17, 4, 3, 5, 2]
//Output: [(17, 5, 2]

func leaders(_ nums: [Int]) -> [Int] {
    var ans: [Int] = []
    let n = nums.count
    var i = n - 1
    var maxElement = 0
    
    while i >= 0 {
        let element = nums[i]
        if element > maxElement {
            ans.append(element)
            maxElement = element
        }
        i -= 1
    }
    
    return ans.reversed()
 }

print(leaders( [16, 17, 4, 3, 5, 2]))

// store leaders
// consider 1st one is leader
// loop to right < n
    // checking if found greater number
    // break if not a leader

// if leader store to leaders

// return







//start vs end
// k = counter
