class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for i in 0..<asteroids.count {
            let asteroid = asteroids[i]
            if asteroid > 0 {
                stack.append(asteroid)
            } else {
                while !stack.isEmpty, stack.last! > 0, abs(asteroid) > stack.last! {
                    stack.removeLast()
                }
                if !stack.isEmpty, abs(asteroid) == stack.last! {
                    stack.removeLast()
                }
                else if stack.isEmpty {
                    stack.append(asteroid)
                }
                else if !stack.isEmpty, stack.last! < 0 {
                    stack.append(asteroid)
                }
            }
        }
        return stack
    }
}