class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp : [[Int]] = Array(repeating : Array(repeating : 0, count : n), count : m)
        for i in 0..<m {
            dp[i][0] = 1
        }
        for j in 0..<n {
            dp[0][j] = 1
        }
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
        return dp[m - 1][n - 1]
    }
}

/*
class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var map = [String : Int]()
        return uniquePathsHelper(0, 0, &map, m, n)
    }
    
    func uniquePathsHelper(_ currentI : Int, _ currentJ : Int, _ map : inout [String : Int], _ m: Int, _ n: Int) -> Int {
        if let result = map["\(currentI),\(currentJ)"] {
            return result
        }
        if currentI == m - 1, currentJ == n - 1 {
            return 1
        }
        if currentI >= m || currentJ >= n {
            return 0
        }
        let result = uniquePathsHelper(currentI + 1, currentJ, &map, m, n) + uniquePathsHelper(currentI, currentJ + 1, &map, m, n)
        map["\(currentI),\(currentJ)"] = result
        return result
    }
}
*/