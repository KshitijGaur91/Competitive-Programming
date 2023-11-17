class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int : Int]()
        for i in 0..<nums.count {
            if let pos = dict[target - nums[i]] {
                return [i, pos]
            } else {
                 dict[nums[i]] = i
            }
        }
        return [-1, -1]
    }
}