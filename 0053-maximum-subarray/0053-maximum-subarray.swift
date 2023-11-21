class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var localSum = 0
        var maxSum = Int.min
        for i in 0..<nums.count {
            localSum = localSum + nums[i]
            maxSum = max(maxSum, localSum)
            if localSum < 0 {
                localSum = 0
            }
        }
        return maxSum
        
    }
}