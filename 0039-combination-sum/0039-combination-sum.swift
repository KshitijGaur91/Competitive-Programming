class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = Set<[Int]>()
        combinationSumHelper(candidates, target, [], 0, &result)
        return Array(result)
    }
    
    func combinationSumHelper(_ candidates: [Int], _ target: Int, _ currentCombination : [Int], _ currentSum : Int, _ result : inout Set<[Int]>){
        if currentSum == target {
            result.insert(currentCombination.sorted())
            return
        }
        if currentSum > target {
            return
        }
        for i in 0..<candidates.count {
            let num = candidates[i]
            combinationSumHelper(candidates, target, currentCombination + [num], currentSum + num, &result)
        }
    }
}