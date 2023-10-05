class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for i in 0..<asteroids.count {
            if asteroids[i] > 0 {
              stack.append(asteroids[i])  
            }
            else {
                while !stack.isEmpty, stack.last! > 0, abs(asteroids[i]) > stack.last! {
                    stack.removeLast()
                }
                if !stack.isEmpty, stack.last! > 0, abs(asteroids[i]) == stack.last! {
                    stack.removeLast()
                }
                else if !stack.isEmpty, stack.last! < 0 {
                    stack.append(asteroids[i])
                } else if stack.isEmpty {
                    stack.append(asteroids[i])
                }
            }
            
        }
        return stack
    }
}