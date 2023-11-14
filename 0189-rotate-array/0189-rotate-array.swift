class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let d = k % nums.count
        // Reverse the first part
        var i = 0
        var j = nums.count - d - 1
        reverse(&nums, i, j)

        // Reverse the second part
        i = nums.count - d
        j = nums.count - 1
        reverse(&nums, i, j)

        // Reverse whole array
        i = 0 
        j = nums.count - 1
        reverse(&nums, i, j)
        
    }
    
    func reverse(_ nums : inout [Int], _ start : Int, _ end : Int) {
        var i = start
        var j = end
        while i < j {
            nums.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
}