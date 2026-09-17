class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var startValue = 1
        var prefixSum = 0
        for num in nums {
            if num < 0, (prefixSum + startValue + num) < 1 {
                startValue = 1 - prefixSum - num
            }
            prefixSum += num
        }
        return startValue
    }
}
