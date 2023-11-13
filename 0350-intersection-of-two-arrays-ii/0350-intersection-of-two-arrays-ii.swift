class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var arr1 = nums1.sorted()
        var arr2 = nums2.sorted()
        var i = 0
        var j = 0
        while i < arr1.count, j < arr2.count {
            if arr1[i] == arr2[j] {
                result.append(arr1[i])
                i += 1
                j += 1
            } else if arr1[i] < arr2[j] {
                i += 1
            } else if arr2[j] < arr1[i] {
                j += 1
            }
        }
        return result
    }
    /*
    // Map
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
    */
}