class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sumDict = [Int: Int]()

        for (i, val) in nums.enumerated() {
            var diff = target - val

            if let value = sumDict[diff] {
                return [value, i]
            }
            sumDict[val] = i 
        }

        return []
    }
}
