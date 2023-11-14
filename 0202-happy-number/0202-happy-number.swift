class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = squareSumOfDigits(n)
        
        while slow != fast {
            if fast == 1 {
                return true
            }
            slow = squareSumOfDigits(slow)
            fast = squareSumOfDigits(squareSumOfDigits(fast))
        }
        return fast == 1
    }
    
    func squareSumOfDigits(_ n : Int) -> Int {
        var num = n
        var squareSum = 0
        while num > 0 {
            let digit = num % 10
            squareSum += digit * digit
            num = num / 10
        }
        print(squareSum)
        return squareSum
    }
}