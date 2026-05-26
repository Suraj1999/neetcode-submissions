class Solution {

    func encode(_ strs: [String]) -> String {
         var result = ""

        for str in strs {
            result += "\(str.count)#\(str)"
        }

        return result
    }

    func decode(_ str: String) -> [String] {
       var result = [String]()
        let chars = Array(str)
        var i = 0

        while i < chars.count {
            var j = i

            // 1. read length
            while chars[j] != "#" {
                j += 1
            }

            let length = Int(String(chars[i..<j]))!
            j += 1 // skip '#'

            // 2. read string
            let start = j
            let end = j + length

            let str = String(chars[start..<end])
            result.append(str)

            // move pointer
            i = end
        }

        return result
    }
}


 