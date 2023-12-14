class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var freqDict = [Character : Int]()
        for c in s {
            freqDict[c, default : 0] += 1
        }
        var index = 0 
        for c in s {
            if let freq = freqDict[c], freq == 1 {
                return index
            }
            index += 1
        }
        return -1
    }
}