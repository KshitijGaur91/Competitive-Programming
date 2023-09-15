class Solution {
    func openLock(_ deadends: [String], _ target: String) -> Int {
        var dontVisit = Set(deadends)
        var queue : [(String, Int)] = [("0000", 0)]
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            if current.0 == target {
                return current.1
            }
            if !dontVisit.contains(current.0) {
                let combinations = 
                queue.append(contentsOf : getFurtherCombinations(current))
                dontVisit.insert(current.0)
            }
        }
        
        return -1
    }
    func getFurtherCombinations(_ current : (String, Int)) -> [(String, Int)] {
        var children = [(String, Int)]()
        let currentCombination : [Int] = current.0.map {Int(String($0)) ?? 0}
        
        for i in 0..<currentCombination.count {
            var arr = currentCombination
            let currentIntVal = arr[i]
            let nextIntVal = (currentIntVal + 1) % 10
            arr[i] = nextIntVal
            let stringArr = (arr.map {String($0) ?? "0"}).joined()
            children.append((stringArr, current.1 + 1))
            
            var arr1 = currentCombination
            let currentIntVal1 = arr1[i]
            let prevIntVal = (currentIntVal1 - 1 + 10) % 10
            arr1[i] = prevIntVal
            let stringArr1 = (arr1.map {String($0) ?? "0"}).joined()
            children.append((stringArr1, current.1 + 1))

        }
        
        return children
        
    }
}