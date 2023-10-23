class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict = [Int : Int]()
        for num in arr {
            dict[num, default : 0] += 1
        }
        return dict.values.count == Set(dict.values).count
    }
}