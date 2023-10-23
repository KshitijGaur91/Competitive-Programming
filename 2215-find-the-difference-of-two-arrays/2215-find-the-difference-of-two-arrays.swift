class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var answer0 = [Int]()
        var answer1 = [Int]()
        
        var set = Set(nums2)
        for i in nums1 where !set.contains(i){
            answer0.append(i)
            set.insert(i)
        }
        
        set = Set(nums1)
        for j in nums2 where !set.contains(j){
            answer1.append(j)
            set.insert(j)
        }
        
        return [answer0, answer1]
    }
}