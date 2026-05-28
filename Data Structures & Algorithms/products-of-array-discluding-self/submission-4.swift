class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        let n = nums.count
        var result = Array(repeating: 1, count: n)

        // Left products
        var leftProduct = 1

        for i in 0..<n {
            result[i] = leftProduct
            leftProduct *= nums[i]
        }

        // Right products
        var rightProduct = 1

        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] *= rightProduct
            rightProduct *= nums[i]
        }

        return result
    }
}