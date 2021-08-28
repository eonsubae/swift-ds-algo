/*
  Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
  
  A subsequence of a string is a new string that is formed from the original string by 
  deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. 
  (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
*/ 

/*
  Example 1:
  Input: s = "abc", t = "ahbgdc"
  Output: true
  
  Example 2:
  Input: s = "axc", t = "ahbgdc"
  Output: false
   
  Constraints:
  0 <= s.length <= 100
  0 <= t.length <= 104
  s and t consist only of lowercase English letters.
*/

func isSubsequence(_ s: String, _ t: String) -> Bool {
    let tc = Array(t.utf8)
    let sc = Array(s.utf8)
    
    let tccount = tc.count
    let sccount = sc.count
    
    var tcIdx = 0
    var scIdx = 0
    
    while scIdx < sccount && tcIdx < tccount {
        
        let sAtIdx = sc[scIdx]
        let tAtIdx = tc[tcIdx]
        
        if sAtIdx == tAtIdx {
            scIdx += 1
        }
        tcIdx += 1
    }
    
    return scIdx == sccount
}

print(isSubsequence("abc", "ahbgdc")) // true
print(isSubsequence("axc", "ahbgdc")) // false