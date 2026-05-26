class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        nums.count != Set(nums).count
    }
}
