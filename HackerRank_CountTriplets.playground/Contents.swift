import Foundation

func countTriplets(arr: [Int], r: Int) -> Int {
    var left: [Int:Int] = [:]
    var right: [Int:Int] = [:]
    for each in arr {
        right[each] = (right[each] ?? 0) + 1
    }
    var sum = 0
    for each in arr {
        right[each] = (right[each] ?? 0) - 1
        if each % r == 0 {
            sum += (left[each/r] ?? 0) * (right[each*r] ?? 0)
        }
        left[each] = (left[each] ?? 0) + 1
    }
    return sum
}

countTriplets(arr: [1, 3, 9, 9, 27, 81], r: 3)
