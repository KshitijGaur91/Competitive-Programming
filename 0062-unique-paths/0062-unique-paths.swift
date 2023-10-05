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