class Solution {
    func climbStairs(_ n: Int) -> Int {
        var i = 0
        var j = 1
        for _ in 0..<n {
            let sum = i + j
            i = j
            j = sum
        }
        return j
    }
    /*
    func climbStairs(_ n: Int) -> Int {
        var memo = [Int : Int]()
        return climbStairsHelper(n, &memo)
    }
    
    func climbStairsHelper(_ n: Int, _ memo : inout [Int : Int]) -> Int {
        if n == 0 || n == 1 {
            return 1
        } else if let storedValue = memo[n] {
            return storedValue
        }
        let result =  climbStairsHelper(n - 1, &memo) + climbStairsHelper(n - 2, &memo)
        memo[n] = result
        return result
    }
    */
}