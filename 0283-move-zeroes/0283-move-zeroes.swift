class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var j = 0
        while j < nums.count {
            if nums[j] != 0 {
                nums.swapAt(i, j)
                i = i + 1
            }
            j = j + 1
        }
    }
}