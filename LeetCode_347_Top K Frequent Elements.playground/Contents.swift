import Foundation

func maximumToys(prices: [Int], k: Int) -> Int {
    let prices = prices.sorted()
    let n = prices.count
    var count = 0
    var k = k
    var i = 0
    while k > 0, i < n {
        if k - prices[i] >= 0 {
            count += 1
            k = k - prices[i]
        }
        i += 1
    }
    return count
}

//print([1,1,1,2,2,3].prefix(2))

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var frequencies: [Int: Int] = [:]
    for num in nums {
        frequencies[num, default: 0] += 1
    }
    return frequencies
        .keys
        .sorted(by: {frequencies[$0, default: 0] > frequencies[$1, default: 0]})
        .prefix(k)
        .map{$0}
}

print(topKFrequent([1,1,1,2,2,3], 2))
