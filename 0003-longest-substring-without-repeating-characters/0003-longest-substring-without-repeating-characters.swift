class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character : Int]()
        let sArray = Array(s)
        var maxLen = 0 
        var i = 0
        var j = 0
        
        while j < sArray.count {
            if let pos = dict[sArray[j]], pos >= i {
                i = pos + 1
            } else {
                dict[sArray[j]] = j
                let len = j - i + 1
                maxLen = max(maxLen, len)
                j = j + 1
            }
        }
        
        return maxLen
        
    }
}