class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0 
        var right = height.count - 1
        var maxWater = 0
        while left < right {
            let currentWater = min(height[left], height[right]) * (right - left)
            maxWater = max(maxWater, currentWater)
            if height[left] < height[right] {
                left += 1
            }
            else if height[right] < height[left] {
                right -= 1
            }
            else {
                left += 1
                right -= 1
            }
        }
        return maxWater
    }
}