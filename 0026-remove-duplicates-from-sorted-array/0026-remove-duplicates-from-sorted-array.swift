class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var i = 0
        var j = 1
        while j < nums.count {
            while j < nums.count, nums[j] == nums[i] {
                j = j + 1
            }
            if j < nums.count {
                nums.swapAt(i + 1, j)
                i = i + 1
                j = j + 1
            }
        }
        return i + 1
    }
    
    // func removeDuplicates(_ nums: inout [Int]) -> Int {
    //     var i = 0
    //     var j = i + 1
    //     while j < nums.count {
    //         while nums[i] == nums[j] {
    //         j = j + 1
    //     }
    //     if j != i + 1, j < nums.count {
    //         nums.swapAt(i + 1, j)
    //         i = i + 1
    //         j = j + 1
    //     }
    //     }
    //     return i + 1
    // }
}