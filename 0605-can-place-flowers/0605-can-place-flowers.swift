class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flower = flowerbed
        var remaining = n
        var i = 0
        var prev = 0
        var next = 0
        while i < flower.count, remaining > 0 {
            if flower[i] == 0 {
                if i > 0 {
                    prev = flower[i - 1]
                }
                if i < flower.count - 1 {
                    next = flower[i + 1]
                }
                if prev == 0, next == 0 {
                    remaining = remaining - 1
                    flower[i] = 1
                }
            }
            i = i + 1
        }
        return remaining == 0
    }
}