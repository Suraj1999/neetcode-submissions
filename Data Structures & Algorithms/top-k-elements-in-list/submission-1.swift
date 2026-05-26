class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       
       var dict = [Int: Int]()

       for val in nums {
         dict[val, default: 0] += 1
       }

       var bucket = Array(repeating: [Int](), count: nums.count+1)

       for (val, freq) in dict {
        bucket[freq] += [val]
       }

       var result = [Int]()

       for i in stride(from: bucket.count-1, through: 0 , by: -1) {
         for val in bucket[i] {
            result.append(val)
            if result.count == k {
                return result
            }
         }
       }

       return []
    }
}
