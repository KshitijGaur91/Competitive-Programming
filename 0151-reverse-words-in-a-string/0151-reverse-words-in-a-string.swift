class Solution {
    func reverseWords(_ s: String) -> String {
        var reversedString = ""
        var wordArray = s.split(separator: " ")
        var start = 0
        var end = wordArray.count - 1
        while start < end {
            wordArray.swapAt(start, end)
            start += 1
            end -= 1
        }
        return wordArray.joined(separator: " ")
    }
}