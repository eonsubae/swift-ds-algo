// 나의 풀이
var memo = [Int: Int]()

func minimumTimeInATM(_ n: Int, _ p: [Int]) -> Int {
    let sortedArray = p.sorted()
    var result = 0
    
    for i in 0..<n {
        if i == 0 {
            result += sortedArray[0]
            memo[0] = sortedArray[0]
            continue
        }
        
        let spendTime = memo[i - 1]! + sortedArray[i]
        result += spendTime
        memo[i] = spendTime
    }
    
    return result
}

// 다른 사람
func solution() -> Int { 
    let n = Int(readLine()!)! 
    var people = readLine()!.split(separator: " ").map({Int($0)!}) 
    people = people.sorted() 
    var result = 0 
    
    for (index, value) in people.enumerated() { 
        result += (value * (n - index)) 
    } 
    
    return result 

    // 1번째: 1

    // 2번째: 1 + 2
    
    // 3번쨰: 1 + 2 + 3
    
    // 4번째: 1 + 2 + 3 + 3
    
    // 5번째: 1 + 2 + 3 + 3 + 4
}
        
print(minimumTime(5, [3, 1, 4, 3, 2])) // 32
