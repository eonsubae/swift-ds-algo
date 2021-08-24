// Normal recursion
func fib(_ n: Int) -> Int {
  if n == 0 {
    return 0
  } else if n == 1 {
    return 1
  } else {
    return fib(n - 1) + fib(n - 2)
  }
}

// Memoization Def
// An optimization technique that stores expensive caculated results
// and returns them when asked for again.
// Fib using memoization
var memo: [Int: Int] = []

func mFib(_ n: Int) -> Int {
  if n == 0 { return 0 } 
  else if n == 1 { return 1 }

  if let result = memo[n] { return result }
  
  memo[n] = mFib(n - 1) + mFib(n - 2)

  return memo[n]!
}