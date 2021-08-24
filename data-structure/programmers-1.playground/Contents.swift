import Cocoa

/*
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var seen = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let prevIndex = seen[num] { // Found
            result = [prevIndex, i]
            break
        }
        seen[target - num] = i
    }
    return result
}

print(twoSum([2,7,11,15], 9))
print(twoSum([3,2,4], 6))
print(twoSum([3,3], 6))
*/

/*
func reverse(_ x: Int) -> Int {
    let negative = x < 0
    
    let string = String(String(abs(x)).reversed())

    // -2^31 <= x <= 2^31 - 1
    guard let result = Int(string),
          result <= 2_147_483_647,
          -result >= -2_147_483_647
    else { return 0 }
    
    return negative ? -result : result
}

print(reverse(123)) // 321
print(reverse(-123)) // -321
print(reverse(120)) // 21
print(reverse(0)) // 0
*/

/*
func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    for i in 0..<prices.count - 1 {
        if prices[i] < prices [i+1] {
            profit += prices[i+1] - prices[i]
        }
    }
    return profit
}

print(maxProfit([7,1,5,3,6,4])) // 7
print(maxProfit([1,2,3,4,5])) // 4
print(maxProfit([7,6,4,3,1])) // 0
*/

func longestPalindrome(_ s: String) -> Int {
    
}

print(longestPalindrome("abccccdd")) // 7 "dccaccd"
print(longestPalindrome("a")) // 1
print(longestPalindrome("bb")) // 2
