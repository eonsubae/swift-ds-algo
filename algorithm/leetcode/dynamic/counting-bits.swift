/*
  Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), 
  ans[i] is the number of 1's in the binary representation of i.
*/

/*
  Example 1:
  Input: n = 2
  Output: [0,1,1]
  Explanation:
  0 --> 0
  1 --> 1
  2 --> 10

  Example 2:
  Input: n = 5
  Output: [0,1,1,2,1,2]
  Explanation:
  0 --> 0
  1 --> 1
  2 --> 10
  3 --> 11
  4 --> 100
  5 --> 101
  
  Constraints:
  0 <= n <= 105
*/

// 나의 풀이
func countBits(_ n: Int) -> [Int] {
    var result = [Int]()
    
    for num in 0...n {
        let bits = String(num, radix: 2).compactMap { Int(String($0)) }
        result.append(bits.reduce(0) { $0 + $1 })
    }
    
    return result
}

// 다른 사람의 풀이
func countBits(_ num: Int) -> [Int] {
    var array = [Int]()
    for n in 0...num {  
        let c = String(n, radix: 2).characters.filter{ $0 == "1"}.count
        array.append(c)  
    }
    return array
}

print(countBits(2)) // [0,1,1]
print(countBits(5)) // [0,1,1,2,1,2]