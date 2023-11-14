class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0 
        var j = height.count - 1
        var maxWater = 0
        while i < j {
            let water = min(height[i], height[j]) * (j - i)
            maxWater = max(maxWater, water)
            if height[i] < height[j] {
                i = i + 1
            } else if  height[j] < height[i] {
                j = j - 1
            }else {
                i = i + 1
                j = j - 1
            }
        }
        return maxWater
    }
}