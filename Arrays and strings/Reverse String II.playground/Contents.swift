import UIKit

class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        // string s, integer k
        // reverse first k characters for every 2k characters counting from the start of the string
        // if fewer than k chars left - reverse all of them
        // if k <= charcount < 2k -> leave the other as original

        // process every block of 2k
        var result: String = ""
        let subStringLength = k * 2
        let remainder = s.count % subStringLength
        
        let totalIteration = s.count / subStringLength
        var iter = 0
        var startOffset = 0
        
        while iter < totalIteration {
            // reverse k characters
            var start = s.index(s.startIndex, offsetBy: startOffset)
            var end = s.index(start, offsetBy: k)
            let revSubStr = String(s[start..<end])
            print("rev: ", revSubStr)
            result.append(reverseSubStr(revSubStr))

            // keep k characters
            start = s.index(end, offsetBy: k)
            end = s.index(start, offsetBy: k)
            let keepSubStr = String(s[start..<end])
            print("keep: ", keepSubStr)
            result.append(keepSubStr)
            
            iter += 1
            startOffset += subStringLength
        }
        
        // process remainder
        if remainder > 0, remainder < k {
            // reverse all
        } else if remainder > k {
            // reverse first k chars, leave the other as original
        }

        return result
    }

    func reverseSubStr(_ s: String) -> String {
        return s
    }
}

let test = "abcdefg"
print(Solution().reverseStr(test, 2))
