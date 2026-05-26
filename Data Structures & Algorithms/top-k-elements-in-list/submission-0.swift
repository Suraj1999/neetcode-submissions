class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        var dict = [Int: Int]()

        // calculate the frquency
        for num in nums {
            dict[num, default:0] += 1
        }

        // create a bucket now -> an element can occur max times of size of array
       // two number can occur at same number of times
        var bucket = Array(repeating: [Int](), count: nums.count + 1)
        
        for (num, freq) in dict {
            bucket[freq] += [num]
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
      return result
    }
}
