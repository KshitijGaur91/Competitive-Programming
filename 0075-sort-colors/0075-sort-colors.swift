class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0
        var mid = 0
        var right = nums.count - 1
        while mid <= right {
            if nums[mid] == 0 {
                nums.swapAt(left, mid)
                mid += 1
                left += 1
            } else if nums[mid] == 1 {
                mid += 1
            } else {
                nums.swapAt(right, mid)
                right -= 1
            }
        }
    }

}



