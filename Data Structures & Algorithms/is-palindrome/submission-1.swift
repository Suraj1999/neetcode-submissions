class Solution {
    func isPalindrome(_ s: String) -> Bool {
       var charStr = [Character]()

       for str in s {
        if str.isLetter || str.isNumber {
            charStr.append(str)
        }
       }

       return String(charStr).lowercased() == String(charStr.reversed()).lowercased()
    }
}
