class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var currentIndex = m + n - 1
        while i >= 0 , j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[currentIndex] = nums1[i]
                i = i - 1
                currentIndex = currentIndex - 1
            }
            else if nums2[j] > nums1[i] {
                nums1[currentIndex] = nums2[j]
                j = j - 1
                currentIndex = currentIndex - 1
            } else {
                nums1[currentIndex] = nums1[i]
                i = i - 1
                currentIndex = currentIndex - 1
                
                nums1[currentIndex] = nums2[j]
                j = j - 1
                currentIndex = currentIndex - 1
            }
        }
        while i >= 0 {
            nums1[currentIndex] = nums1[i]
            i = i - 1
            currentIndex = currentIndex - 1
        }
        while j >= 0 {
            nums1[currentIndex] = nums2[j]
            j = j - 1
            currentIndex = currentIndex - 1
        }
    }
}