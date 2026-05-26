class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

       var charCount = [Character: Int]()

       for ch in s {
         charCount[ch, default: 0] += 1
       }

     for ch in t {
        charCount[ch,default: 0] -= 1
     }

       return charCount.values.allSatisfy { $0 == 0 }
    }
}
