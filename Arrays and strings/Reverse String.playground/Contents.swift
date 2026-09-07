import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        guard s.count > 1 else {
            return
        }

        var lIndex = 0
        var rIndex = s.count - 1
        var tempChar: Character = " "

        while lIndex < rIndex {
            // compare
            if s[lIndex] != s[rIndex] {
                tempChar = s[lIndex]
                
                s[lIndex] = s[rIndex]
                s[rIndex] = tempChar
            }

            lIndex += 1
            rIndex -= 1
        }
    }
}
