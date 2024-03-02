class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let rows = matrix.count
        let cols = matrix.first?.count ?? 0
        
        var result = Array(repeating : Array(repeating : 0, count : rows), count : cols)
        
        for i in 0..<rows {
            for j in 0..<cols {
                result[j][i] = matrix[i][j]
            }
        }
        return result
    }
}