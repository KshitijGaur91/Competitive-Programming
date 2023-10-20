class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var maxPair = 0
        var nums = nums.sorted()
        var left = 0
        var right = nums.count - 1
        while left < right {
            let sum = nums[left] + nums[right]
            if sum == k {
                maxPair += 1
                left += 1
                right -= 1
            } else if sum < k {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxPair
    }
    func maxOperations1(_ nums: [Int], _ k: Int) -> Int {
        var freqDict = [Int : Int]()
        for num in nums {
            freqDict[num, default : 0] += 1
        }
        var maxPair = 0
        for num in nums {
            if freqDict[num, default : 0] > 0 {
                freqDict[num, default : 0] -= 1
                if freqDict[k - num, default : 0] > 0 {
                freqDict[k - num, default : 0] -= 1
                     maxPair += 1
                } 
            }
        }
        return maxPair
    }
}