//
//  LC_76_MinimumWindowSubstring.swift
//  
//
//  Created by Sudipto Roy on 8/6/25.
//

import Foundation

//let a = [1,2,3,4,5]
//let sum = a.reduce(0) { partialResult, value in
//    partialResult + value
//}

let iArray = ["a", "b", "c"]
let oArray = ["c-2", "b-1", "a-0"]

var ans =  iArray.enumerated().map { (index, value) in
    "\(value)-\(index)"
} as [String]
ans.reverse()

print(ans)


func minWindow(_ s: String, _ t: String) -> String {
    //convert into character
    //for i to n
    // while start <= end, collection contains target
    let letters = Array(s)
    var n = s.count
    var start = 0, end = 0
    var dic: [Character: Int] = [:]
    var i = 0

    func satisfy() -> Bool {
        for each in t {
            guard let value = dic[each], value > 0 else {
                return false
            }
        }
        return true
    }

    while i < n {
        while start <= end {
            let value = dic[letters[end], default: 0]
            print(letters[end])
            dic[letters[end]] = value + 1
            end+=1
        }
        i+=1
    }

    return ""
}

minWindow("ADOBECODEBANC","ABC")
