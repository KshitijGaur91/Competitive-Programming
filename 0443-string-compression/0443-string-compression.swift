class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var compStr = ""
        var currentCharCount = 0
        var i = 0
        var j = 0
        while j < chars.count {
            while j < chars.count, chars[i] == chars[j] {
                currentCharCount += 1
                j = j + 1
            }
            compStr += String(chars[i])
            if currentCharCount > 1 {
                compStr += "\(currentCharCount)"
            }
            currentCharCount = 0
            i = j
        }
        chars = Array(compStr)
        return chars.count
    }
}