class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let rows = matrix.count
        let cols = matrix.first?.count ?? 0
        
        // Transpose
        for i in 0..<rows {
            for j in i..<cols {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
        
        // Reverse rows
        for i in 0..<rows {
            matrix[i] = matrix[i].reversed()
        }
    }
}