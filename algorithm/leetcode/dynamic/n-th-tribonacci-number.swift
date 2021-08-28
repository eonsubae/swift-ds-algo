/*
  The Tribonacci sequence Tn is defined as follows: 
  
  T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
  
  Given n, return the value of Tn.
*/

/*
  Example 1:
  Input: n = 4
  Output: 4
  Explanation:
  T_3 = 0 + 1 + 1 = 2
  T_4 = 1 + 1 + 2 = 4

  Example 2:
  Input: n = 25
  Output: 1389537
   
  Constraints:
  0 <= n <= 37
  The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2^31 - 1.
*/

// 나의 풀이
var memo = [Int: Int]()

func tribonacci(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    if n == 2 { return 1 }
    
    if memo[n] != nil {
        return memo[n]!
    } else {
        memo[n] = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
        return memo[n]!
    }
}

// 다른 사람의 풀이
func tribonacci(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    if n == 2 {
        return 1
    }
    
    var prev1 = 0
    var prev2 = 1
    var prev3 = 1
    
    for _ in 3 ..< n {
        let newTribNumber = prev1 + prev2 + prev3
        prev1 = prev2
        prev2 = prev3
        prev3 = newTribNumber
    }
    
    return prev3 + prev2 + prev1
}

print(tribonacci(4)) // 4
print(tribonacci(25)) // 1389537
