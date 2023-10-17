class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1Arr = Array(word1)
        let word2Arr = Array(word2)
        var resultArr = [Character]()
        var i = 0
        var j = 0
        while i < word1Arr.count, j < word2Arr.count {
            resultArr.append(word1Arr[i])
            resultArr.append(word2Arr[j])
            i += 1
            j += 1
        }
        while i < word1Arr.count {
            resultArr.append(word1Arr[i])
            i += 1
        }
        while j < word2Arr.count {
            resultArr.append(word2Arr[j])
            j += 1
        }
        return String(resultArr)
    }
}