class Solution {
    func isPalindrome(_ s: String) -> Bool {
       var charStr = Array(s.lowercased().filter {
        $0.isLetter || $0.isNumber
       })

       var i = 0
       var j = charStr.count - 1

       while i < j {
          
          if charStr[j] != charStr[i] {
            return false
          }
         
         i += 1
         j -= 1
       }

       return true
    }
}
