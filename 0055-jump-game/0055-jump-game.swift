class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var dp = [Int : Bool]()
        return canJumpHelper(nums, 0, &dp)
    }
    
    func canJumpHelper(_ nums: [Int], _ currentIndex : Int, _ dp : inout [Int : Bool]) -> Bool {
        if let storedResult = dp[currentIndex] {
            return storedResult
        }
        if currentIndex == nums.count - 1 {
            return true
        }
        if currentIndex >= nums.count {
            return false
        }
        if nums[currentIndex] == 0 {
            return false
        }
        var canJump = false
        for i in 0..<nums[currentIndex] {
            canJump = canJump || canJumpHelper(nums, currentIndex + i + 1, &dp)
        }
        dp[currentIndex] = canJump
        return canJump
    }
}