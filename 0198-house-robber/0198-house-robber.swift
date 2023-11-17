class Solution {
    func rob(_ nums: [Int]) -> Int {
        var storedResults = [Int : Int]()
        return robHelper(nums, 0, &storedResults)
    }
    
    func robHelper(_ nums : [Int], _ currentIndex : Int, _ storedResults : inout [Int : Int]) -> Int {
        if currentIndex >= nums.count {
            return 0
        }
        if let storedProfit = storedResults[currentIndex] {
            return storedProfit
        }
        let profit = max(nums[currentIndex] + robHelper(nums, currentIndex + 2, &storedResults), 
                   robHelper(nums, currentIndex + 1, &storedResults))
        storedResults[currentIndex] = profit
        return profit
    }
}