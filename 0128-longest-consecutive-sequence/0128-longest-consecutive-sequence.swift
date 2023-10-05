class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        
        var sequenceStarter = [Int]()
        for num in nums{
            if !numSet.contains(num - 1) {
                sequenceStarter.append(num)
            }
        }
        
        var maxCount = 0
        var currentCount = 0
        for i in 0..<sequenceStarter.count {
            var currentNumber = sequenceStarter[i]
            currentCount = 0
            while numSet.contains(currentNumber) {
                currentCount += 1
                currentNumber = currentNumber + 1
            }
            maxCount = max(maxCount, currentCount)
        }
        return maxCount
    }
}