class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var resultSet = Set<[Int]>()
        for i in 0..<sortedNums.count {
            var j = i + 1
            var k = sortedNums.count - 1
            while j < k {
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k] 
                if sum == 0 {
                    resultSet.insert([sortedNums[i], sortedNums[j], sortedNums[k]])
                    j = j + 1
                    k = k - 1
                } else if sum < 0 {
                    j = j + 1
                } else {
                    k = k - 1
                }
            }
        }
        return Array(resultSet)
    }
}