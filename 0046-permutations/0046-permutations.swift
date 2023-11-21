class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var numbers = nums
        var partialResult = [Int]()
        var result = [[Int]]()
        permuteHelper(&numbers, &partialResult, nums.count, &result)
        return result
    }
    
    func permuteHelper(_ nums : inout [Int], _ partialResult : inout [Int], _ totalCount : Int, _ result : inout [[Int]]) {
        if partialResult.count == totalCount {
            result.append(partialResult)
        }
        for i in 0..<nums.count {
            let number = nums[i]
            partialResult.append(number)
            nums.remove(at : i)
            permuteHelper(&nums, &partialResult, totalCount, &result)
            partialResult.removeLast()
            nums.insert(number, at : i)
        }
    }
}