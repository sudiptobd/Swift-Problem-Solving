import Foundation

func freqQuery(queries: [[Int]]) -> [Int] {
    var frequency: [Int:Int] = [:]
    var frequencyClub: [Int:Int] = [:]
    var ans: [Int] = []
    for query in queries {
        let x = query[1]
        switch query[0] {
        case 1:
            let counter = frequency[x] ?? 0
            frequency[x] = counter + 1
            if let value = frequencyClub[counter] {
                frequencyClub[counter] = value - 1
            }
            if let value = frequencyClub[counter + 1] {
                frequencyClub[counter + 1] = value + 1
            } else {
                frequencyClub[counter + 1] = 1
            }
        case 2:
            guard let counter = frequency[x],
                  counter > 0 else {
                break
            }
            frequency[x] = counter - 1
            if let value = frequencyClub[counter] {
                frequencyClub[counter] = value - 1
            }
            if let value = frequencyClub[counter - 1] {
                frequencyClub[counter - 1] = value + 1
            } else if counter - 1 > 0 {
                frequencyClub[counter - 1] = 1
            } else {
                //do nothing
            }
        case 3:
            if let value = frequencyClub[x], value > 0 {
                ans.append(1)
            } else {
                ans.append(0)
            }
        default:
            break
        }
    }
    return ans
}

let array2: [[Int]] = [
    [1, 3],
    [2, 3],
    [3, 2],
    [1, 4],
    [1, 5],
    [1, 5],
    [1, 4],
    [3, 2],
    [2, 4],
    [3, 2]
]


let array: [[Int]] = [
    [1, 5],
    [1, 6],
    [3, 2],
    [1, 10],
    [1, 10],
    [1, 6],
    [2, 5],
    [3, 2]
]

freqQuery(queries: array)
freqQuery(queries: array2)



