//
//  HackerRankAnagram.swift
//  
//
//  Created by Sudipto Roy on 7/2/25.
//

import Foundation

extension Int {
    mutating func increment(by value: Int) {
        self += value
    }
}


func mapString(_ s: String ) -> [Character:Int] {
    var data: [Character:Int] = [:]
    for element in s {
        data[element, default: 0].increment(by: 1)
    }
    return data
}

func makeAnagram(a: String, b: String) -> Int {
    // Write your code here
    var aData: [Character:Int] = mapString(a)
    var bData: [Character:Int] = mapString(b)
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var sum = 0
    for element in letters {
        let aValue = aData[element] ?? 0
        let bValue = bData[element] ?? 0
        sum += abs(aValue-bValue)
    }
    return sum
}
