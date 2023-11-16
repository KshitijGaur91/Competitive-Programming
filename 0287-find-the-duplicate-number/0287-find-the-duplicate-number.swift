class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return -1
        }
        var slow = nums[0]
        var fast = nums[0]
        
        repeat  {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while slow != fast
        
        slow = nums[0]
        while slow != fast {
            slow = nums[slow]
            fast = nums[fast]
        }
        return slow
        
    }
}