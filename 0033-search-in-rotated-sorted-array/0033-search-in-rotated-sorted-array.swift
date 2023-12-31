class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right)/2
            if nums[mid] == target {
                return mid
            } else if nums[left] <= nums[mid] {
                if target >= nums[left], target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
            else if nums[right] >= nums[mid] {
                if nums[right] >= target, nums[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return -1
    }
}