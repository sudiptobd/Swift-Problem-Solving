//
//  HC_ZigzagConversion.swift
//  
//
//  Created by Sudipto Roy on 7/12/25.
//

import Foundation

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var dict: [Int: [Character]] = [:]

        var k = 0
        var kmin = 0
        var kmax = numRows - 1
        var forward = false

        func kNext() -> Int {
            guard kmax > 0 else {
                return 0
            }
            if k == kmax || k == kmin {
                forward.toggle()
            }
            var temp = k
            k = k + (forward ? 1:-1)
            
            return temp
        }

        for each in s {
            let k = kNext()
            dict[k, default: []].append(each)
        }

        var all: [Character] = []
        for i in 0..<numRows {
            all.append(contentsOf:dict[i] ?? [])
        }
        return String(all) ?? ""
    }
}
