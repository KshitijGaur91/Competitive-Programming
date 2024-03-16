class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0
        var dict = [Character : Int]()
        let strArray = Array(s)
        var left = 0
        var right = 0
        while right < strArray.count {
            let char = strArray[right]
            if let pos = dict[char], pos >= left {
                left = pos + 1
            } else {
                dict[char] = right
                maxLen = max(maxLen, right - left + 1)
                right += 1
            }
        }
        return maxLen
    }
}