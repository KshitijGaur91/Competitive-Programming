class Solution {
    func longestPalindrome(_ s: String) -> String {
        var maxLen = 0
        let strArray = Array(s)
        var start = 0
        var end = 0
        for i in 0..<strArray.count {
            let len1 = expandPalindrome(strArray, i, i)
            let len2 = expandPalindrome(strArray, i, i + 1)
            let len = max(len1, len2)
            if len > maxLen {
                maxLen = len
                start = i - (len - 1)/2
                end = i + len/2
            }
        }
        return String(strArray[start...end])
    }
    
    func expandPalindrome(_ str : [Character], _ l : Int, _ r : Int) -> Int {
        var len = 0
        var left = l
        var right = r
        while left >= 0, right < str.count {
            if str[left] == str[right] {
                len = right - left + 1
                left -= 1
                right += 1
            }else {
                break
            }
        }
        return len
    }
}