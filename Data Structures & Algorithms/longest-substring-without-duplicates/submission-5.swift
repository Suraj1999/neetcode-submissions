class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charSet = Set<Character>()
        var maxCount = 0
        var left = 0
        var arr = Array(s)

        for right in 0..<arr.count {

            while charSet.contains(arr[right]) {
                charSet.remove(arr[left])
                left += 1
            }

            charSet.insert(arr[right])
            maxCount = max(maxCount, right - left + 1)
        }

        return maxCount
    }
}
