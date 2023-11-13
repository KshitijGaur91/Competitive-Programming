class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var j = 0
        while j < nums.count {
            if nums[j] == 0 {
                j = j + 1
            } else {
                nums.swapAt(i, j)
                i = i + 1
                j = j + 1
            }
            
        }
    }
}


// 0 0 0 1 2 3 0 4 5
// 1 0 0 0 2 3 0 4 5
