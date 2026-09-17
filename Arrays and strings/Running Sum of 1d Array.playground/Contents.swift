class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var currSum = 0
        for num in nums {
            currSum += num
            result.append(currSum)
        }
        return result
    }
}
