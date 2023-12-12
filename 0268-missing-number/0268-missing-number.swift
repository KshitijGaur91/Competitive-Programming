class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = 0
        for n in nums {
            sum += n
        }
        let n = nums.count
        let totalSum = (n * (n + 1))/2
        return totalSum - sum
    }
}