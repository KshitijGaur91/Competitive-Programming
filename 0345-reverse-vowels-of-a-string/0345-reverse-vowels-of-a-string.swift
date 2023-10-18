class Solution {
    func reverseVowels(_ s: String) -> String {
        var strArr = Array(s)
        var left = 0
        var right = strArr.count - 1
        let vowelSet : Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        while left < right {
            while left < right, !vowelSet.contains(strArr[left]) {
                left += 1
            }
            while left < right, !vowelSet.contains(strArr[right]) {
                right -= 1
            }
            strArr.swapAt(left, right)
            left += 1
            right -= 1
        }
        return String(strArr)
    }
}