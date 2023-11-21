class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0 
        var left = 0
        var right = 1
        while right < prices.count {
            if prices[left] > prices[right] {
                left = right
            } else {
                maxProfit = max(maxProfit, prices[right] - prices[left])
            }
            right += 1
        }
        return maxProfit
    }
}