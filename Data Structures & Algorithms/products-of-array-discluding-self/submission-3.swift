class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
       
       var prefixFromStart = Array(repeating: 1, count: nums.count)
       var prefixFromEnd = Array(repeating: 2, count: nums.count)

       var result = Array(repeating: 1, count: nums.count)

       for ind in stride(from: 0, through: nums.count-1, by: 1) {
          if ind == 0 {
            prefixFromStart[ind] = nums[ind]
          } else {
            prefixFromStart[ind] = prefixFromStart[ind-1] * nums[ind]
          }
       }

        for ind in stride(from: nums.count-1, through: 0, by: -1) {
          if ind == nums.count-1 {
            prefixFromEnd[ind] = nums[ind]
          } else {
            prefixFromEnd[ind] = prefixFromEnd[ind+1] * nums[ind]
          }
       }
       
       result[0] = prefixFromEnd[1]
       result[nums.count-1] = prefixFromStart[nums.count-2]

       for ind in stride(from: 1, through: nums.count-2, by: 1) {
         result[ind] = prefixFromStart[ind-1] * prefixFromEnd[ind+1]
       }
      return result
    }
}
