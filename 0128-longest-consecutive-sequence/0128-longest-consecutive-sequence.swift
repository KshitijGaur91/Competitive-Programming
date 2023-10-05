class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var maxCount = 0
        var currentCount = 0
        for i in 0..<nums.count {
            var currentNumber = nums[i]
            if !numSet.contains(currentNumber - 1) {
                currentCount = 0
            while numSet.contains(currentNumber) {
                currentCount += 1
                currentNumber = currentNumber + 1
            }
            maxCount = max(maxCount, currentCount)
            }
        }
        return maxCount
    }
}