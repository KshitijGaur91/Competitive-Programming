class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character : Int]()
        for c in s {
            dict[c, default : 0] += 1 
        }
        for c in t {
            var freq = dict[c, default : 0]
            if freq == 0 {
                return false
            }
            if freq == 1 {
                dict[c] = nil
            } else {
                dict[c] = freq - 1
            }
        }
        return dict.isEmpty
        
    }
}