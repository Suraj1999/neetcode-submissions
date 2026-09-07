class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
      var res = 0
      for val in nums{
        res = res ^ val
      }

      return res
    }
}
