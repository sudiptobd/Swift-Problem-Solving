import Foundation

func countSwaps(a: [Int]) -> Void {
    var a = a
    let n = a.count
    var counter = 0
    for i in stride(from: 0, to: n, by: 1) {
        for j in stride(from: 0, to: n - 1, by: 1) {
            if (a[j] > a[j + 1]) {
                a.swapAt(j, j + 1)
                counter += 1
            }
        }
    }
    print("Array is sorted in \(counter) swaps.")
    print("First Element: \(a[0])")
    print("Last Element: \(a[n-1])")
}
