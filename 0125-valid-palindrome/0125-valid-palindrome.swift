class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let strArray = Array(s)
        var i = 0
        var j = strArray.count - 1
        while i < j {
            while !isAlphaNumeric(strArray[i]), i < j {
                i = i + 1
            }
            while !isAlphaNumeric(strArray[j]), j > i {
                j = j - 1
            }
            if strArray[i].uppercased() != strArray[j].uppercased() {
                return false
            }
            i = i + 1
            j = j - 1
        }
        return true
    }
    
    func isAlphaNumeric(_ c : Character) -> Bool {
        return c.isLetter || c.isNumber
    }
}