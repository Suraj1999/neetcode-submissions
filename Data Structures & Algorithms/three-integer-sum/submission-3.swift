class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var numSet = Set<[Int]>()
        let numsSort = nums.sorted()

        for i in 0..<numsSort.count-2 {

            var left = i+1
            var right = numsSort.count-1

            while left < right {

                if numsSort[i] + numsSort[left] + numsSort[right] == 0 {
                    numSet.insert([numsSort[i],numsSort[left],numsSort[right]])
                    left += 1
                    right -= 1
                } else if numsSort[i] + numsSort[left] + numsSort[right] > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
      return Array(numSet)
    }
}

 
