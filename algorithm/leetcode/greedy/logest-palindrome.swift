/*
Given a string s which consists of lowercase or uppercase letters, 

return the length of the longest palindrome that can be built with those letters.

Letters are case sensitive, for example, "Aa" is not considered a palindrome here.
*/

/*
Example 1:

Input: s = "abccccdd"
Output: 7
Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.
Example 2:

Input: s = "a"
Output: 1
Example 3:

Input: s = "bb"
Output: 2
*/

func longestPalindrome(_ s: String) -> Int {
    var charToFreq = [Character: Int]()
    var longest = 0
    
    for char in s {
        charToFreq[char, default: 0] += 1
    }
    
    for (char, freq) in charToFreq {
        longest += (freq / 2) * 2
    }
    
    return longest < s.count ? longest + 1 : longest
}

func longestPalindrome2(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        if s.count == 1 { return 1 }
        var singleCharAdded = false
        var longestCount = 0
        var characterMap = [Character :Int]()
        for char in s {
            if let charCnt = characterMap[char] {
                characterMap[char] = charCnt + 1
            } else {
                characterMap[char] = 1
            }
        }
                
        for (key, value) in characterMap {
            if value % 2 == 0 {
                longestCount += 2 * (value / 2)
            } else {
                if value > 1 { 
                    longestCount += 2 * ((value - 1) / 2)
                } 
                    if !singleCharAdded {
                        singleCharAdded = true
                        longestCount += 1
                    }
            }
        }
        
        return longestCount
    }
}

extension String {
    subscript(i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}