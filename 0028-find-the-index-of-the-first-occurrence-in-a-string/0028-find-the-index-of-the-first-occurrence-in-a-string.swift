class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hayArray = Array(haystack)
        let needleArray = Array(needle)
        
        if needleArray.count > hayArray.count {
            return -1
        }
        
        var i = 0
        var j = 0 
        var prevI = 0
        
        while i < hayArray.count{
            if hayArray[i] == needleArray[j] {
                i = i + 1
                j = j + 1
            } else {
                prevI = prevI + 1
                i = prevI
                j = 0 
            }
            if j == needleArray.count {
                // Its a match
                return i - needleArray.count
            }
        }
        return -1
    }
}