class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        // nums, n elements
        // k, subArray len = k, max average value -> return this value
        // average = sum / k
        // running sum
        
        // what if n < k? -> invalid
        
        guard nums.count >= k else {
            return 0
        }
        
        var maxAve: Double = 0
        var runningSum = 0
        var index = 0
        
        while index < k {
            runningSum += nums[index]
            index += 1
        }
        
        maxAve = Double(runningSum) / Double(k)
        
        while index < nums.count {
            runningSum -= nums[index-k]
            runningSum += nums[index]
            let currAve = Double(runningSum) / Double(k)
            maxAve = max(maxAve, currAve)
            index += 1
        }
        
        return maxAve
    }
}
