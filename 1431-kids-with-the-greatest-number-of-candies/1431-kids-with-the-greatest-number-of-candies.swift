class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var maxCandies = 0
        for c in candies {
            maxCandies = max(maxCandies, c)
        }
        
        var result = [Bool]()
        for c in candies {
            if c + extraCandies >= maxCandies {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
        
    }
}