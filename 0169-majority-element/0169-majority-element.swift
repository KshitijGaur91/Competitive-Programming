class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var currentNum = nums[0]
        var currentCount = 0
        for num in nums {
            if currentCount <= 0 {
                currentNum = num
                currentCount = 0
            }
            if num == currentNum {
                currentCount += 1
            } else {
                currentCount -= 1
            }
        }
        return currentNum
    }
}