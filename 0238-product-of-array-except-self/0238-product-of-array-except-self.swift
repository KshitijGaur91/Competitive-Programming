class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var leftProductArr : [Int] = Array(repeating : 1, count : nums.count)
        var rightProductArr : [Int] = Array(repeating : 1, count : nums.count)
        var left = 0
        var leftProduct = 1
        while left < nums.count {
            leftProductArr[left] = leftProduct
            leftProduct = leftProduct * nums[left]
            left += 1
        }
        
        var right = nums.count - 1
        var rightProduct = 1
        while right >= 0 {
            rightProductArr[right] = rightProduct
            rightProduct = rightProduct * nums[right]
            right -= 1
        }
        
        var result = [Int]()
        for i in 0..<nums.count {
            result.append(leftProductArr[i] * rightProductArr[i])
        }
        return result
    }
}