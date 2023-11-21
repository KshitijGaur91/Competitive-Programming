class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0 
        var right = 1
        var maxProfit = 0
        
        while right < prices.count {
            if prices[left] > prices[right] {
                left = right
            } else {
                maxProfit = maxProfit + prices[right] - prices[left]
                left = right
            }
            right += 1
        }
        return maxProfit
    }
}