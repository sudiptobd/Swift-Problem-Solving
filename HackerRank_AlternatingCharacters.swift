//
//  HackerRank_AlternatingCharacters.swift
//  
//
//  Created by Sudipto Roy on 7/3/25.
//

import Foundation

func alternatingCharacters(s: String) -> Int {
    // Write your code here
    let characters = Array(s)
    var index = 1
    var ans = 0
    var prev = characters[0]
    let n = characters.count
    while index < n {
        if prev == characters[index] {
            ans += 1
        } else {
            prev = characters[index]
        }
        index += 1
    }
    return ans
}
