class Solution {
    func isValid(_ s: String) -> Bool {
         var stack: [Character] = []
         let brackets: [Character: Character] = [")" : "(", "}" : "{", "]" : "["]

        for char in s {
            if let openingBracket = brackets[char] {
                if stack.isEmpty || stack.last! != openingBracket {
                    return false
                } else {
                    stack.popLast()
                }
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}
