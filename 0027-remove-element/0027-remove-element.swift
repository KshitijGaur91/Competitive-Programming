class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var j = nums.count - 1
        var numCount = 0
        while i <= j {
            if nums[i] == val {
                nums.swapAt(i, j)
                j = j - 1
            } else {
                numCount += 1
                i = i + 1
            }
        }
        return numCount
    }
}