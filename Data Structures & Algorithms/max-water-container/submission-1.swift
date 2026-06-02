class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        
        var maxarea = 0
        var left = 0
        var right = heights.count-1

        while left < right {
           var area = (right-left) * min(heights[left], heights[right])
           maxarea = max(area, maxarea)

           if heights[left] < heights[right] {
               left += 1
           } else {
                right -= 1
           }
        }
    return maxarea
    }
}
