class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
         var minSoFar = prices[0]
         var maxRes = 0

         for i in 1..<prices.count {

              minSoFar = min(minSoFar, prices[i])

              maxRes = max(maxRes, prices[i] - minSoFar)
         }

         return maxRes
    }
}
