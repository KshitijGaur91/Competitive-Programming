class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        generateParenthesisHelper(n, 0, 0, "", &result)
        return result
    }
    
    func generateParenthesisHelper(_ maxLen : Int, _ openP : Int, _ closeP : Int, _ currentStr : String, _ result : inout [String]) {
        if currentStr.count == 2 * maxLen {
            result.append(currentStr)
            return
        }
        if openP < maxLen {
            generateParenthesisHelper(maxLen, openP + 1, closeP, currentStr + "(", &result)
        }
        if closeP < openP {
             generateParenthesisHelper(maxLen, openP, closeP + 1, currentStr + ")", &result)
        }
    }
}