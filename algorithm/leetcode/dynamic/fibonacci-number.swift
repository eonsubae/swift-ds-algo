/*
  The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, 
  such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
  
  F(0) = 0, F(1) = 1
  F(n) = F(n - 1) + F(n - 2), for n > 1.
  Given n, calculate F(n).
*/
 
/*
  Example 1:
  Input: n = 2
  Output: 1
  Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.

  Example 2:
  Input: n = 3
  Output: 2
  Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

  Example 3:
  Input: n = 4
  Output: 3
  Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.
  
  Constraints:
  0 <= n <= 30
*/

// 나의 풀이
var memo = [Int: Int]()
    
func fib(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }
    
    if (memo[n] != nil) {
        return memo[n]!
    } else {
        memo[n] = fib(n-2) + fib(n-1)
        return memo[n]!
    }
}

// 다른 사람의 풀이
var memo = [Int : Int]() 

func fib(_ n: Int) -> Int {
    
    guard n > 1 else { return n }

    if !memo.keys.contains(n) { memo[n] = fib(n - 1) + fib(n - 2) }
    
    return memo[n] ?? fib(n - 1) + fib(n - 2)
}

print(fib(2)) // 1
print(fib(3)) // 2
print(fib(4)) // 3