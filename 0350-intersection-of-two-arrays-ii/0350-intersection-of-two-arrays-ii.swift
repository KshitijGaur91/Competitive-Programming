class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var freqDict = [Int : Int]()
        for n in nums1 {
            freqDict[n, default : 0] += 1
        }
        for m in nums2 {
            if let freq = freqDict[m], freq > 0 {
                result.append(m)
                freqDict[m, default : 0] -= 1
            }
        }
        return result
    }
}