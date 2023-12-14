class Solution {
    func isValid(_ s: String) -> Bool {
        let openSet : Set<Character> = ["(", "{", "["]
        let closeSet : Set<Character> = [")", "}", "]"]
        let map : [Character : Character] = ["(" : ")", "{" : "}", "[" : "]"]
        var stack = [Character]()
        for c in s {
            if openSet.contains(c) {
                stack.append(c)
            } else if closeSet.contains(c) {
                if stack.isEmpty {
                    return false
                } else {
                    let lastChar = stack.removeLast()
                    if map[lastChar] != c {
                        return false
                    }
                }
            } else {
                return false
            }
        }
        return stack.isEmpty
    }
}