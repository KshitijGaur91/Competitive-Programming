class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result : [Int] = Array(repeating : 0, count : nums.count)
        
        for i in (0..<result.count).reversed() {
            if abs(nums[left]) >= abs(nums[right]) {
                result[i] = nums[left] * nums[left]
                left += 1
            } else {
                result[i] = nums[right] * nums[right]
                right -= 1
            }
        }
        return result
    }
}