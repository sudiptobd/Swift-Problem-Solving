import Foundation

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    var dp: [[Int]] = Array(
        repeating: Array(repeating: amount+1, count: amount + 1),
        count: coins.count + 1
    )
    
    if amount == 0 {
        return 0
    }
    
    for i in 0...coins.count {
        dp[i][0] = 0
    }
    
   
    for i in 1...coins.count {
        for j in 1...amount {
            let c = coins[i-1]
            if j - c >= 0 {
                dp[i][j] = min(dp[i-1][j], dp[i][j-c] + 1)
            } else {
                dp[i][j] = dp[i-1][j]
            }
        }
    }
    let ans = dp[coins.count][amount]
    return ans == amount+1 ? -1 : ans
}

coinChange([1,2,5], 11)
coinChange([2], 3)
coinChange([1], 0)
