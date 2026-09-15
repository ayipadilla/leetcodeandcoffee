import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        // given: non-decreasing
        // if first element is negative -> find the zero/first positive, will be starting point
        var result:[Int] = []

        guard let firstNum = nums.first, let lastNum = nums.last else {
            return result
        }

        var allPositive = firstNum >= 0
        var allNegative = lastNum < 0
        
        // case: everything is positive -> straightforward
        // case: everything is negative -> reverse
        // case: negatives, positives -> indexL 0, indexR = X, compare as you go along

        if allPositive {
            // straightforward squares
            result = nums.map { $0 * $0 }

        } else if allNegative {
            // reverse
            result = nums.reversed().map { $0 * $0 }

        } else {
            // find the "0/first positive"
            var indexL = 0
            var indexR = 0
            for i in 0..<nums.count {
                if nums[i] >= 0 {
                    indexR = i
                    indexL = i - 1
                    break
                }
            }
            
            // indexR = first 0/positive
            // insert which is less
            
            while indexR < nums.count, indexL >= 0 {
                let numR = nums[indexR]
                let numL = abs(nums[indexL])
                
                if numR < numL {
                    result.append(numR * numR)
                    indexR += 1
                } else {
                    result.append(numL * numL)
                    indexL -= 1
                }
            }
            
            while indexL >= 0 {
                let numL = nums[indexL]
                result.append(numL * numL)
                indexL -= 1
            }
            
            while indexR < nums.count {
                let numR = nums[indexR]
                result.append(numR * numR)
                indexR += 1
            }
        }

        return result
        
    }
    
}
