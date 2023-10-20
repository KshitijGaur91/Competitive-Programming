class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var freqDict = [Int : Int]()
        for num in nums {
            freqDict[num, default : 0] += 1
        }
        var maxPair = 0
        for num in nums {
            if freqDict[num, default : 0] > 0 {
                freqDict[num, default : 0] -= 1
                if freqDict[k - num, default : 0] > 0 {
                freqDict[k - num, default : 0] -= 1
                     maxPair += 1
                } 
            }
        }
        return maxPair
    }
}