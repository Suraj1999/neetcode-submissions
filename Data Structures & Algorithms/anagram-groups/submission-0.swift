class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
       
       var strDict = [[Int]: [String]]()

       for str in strs {
          
          var count = Array(repeating: 0, count: 26)

          for s in str {
            let index = Int(s.asciiValue! - Character("a").asciiValue!)
            count[index] += 1
          }

          strDict[count, default:[]].append(str)
       }

       return Array(strDict.values)
    }
}
