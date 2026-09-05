class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
          var freqChar: [Character: Int] = [:]
          var arr = Array(s)
          var left = 0
          var maxFreq = 0
          var maxLen = 0

          for right in 0..<arr.count {

            var char = arr[right]

            freqChar[char, default: 0] += 1
            
            maxFreq = max(maxFreq, freqChar[char]!)

            while (right - left + 1) - maxFreq > k {
                freqChar[arr[left]]! -= 1
                left += 1
            }
            maxLen = max(maxLen, right-left+1)
          }
          return maxLen
    }
}
