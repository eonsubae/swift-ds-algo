/*
  Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

  In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
*/

/*
  Example 1:
  Input: rowIndex = 3
  Output: [1,3,3,1]
  
  Example 2:
  Input: rowIndex = 0
  Output: [1]
  
  Example 3:
  Input: rowIndex = 1
  Output: [1,1]
   
  Constraints:
  0 <= rowIndex <= 33
*/

// 나의 풀이
func getRow(_ rowIndex: Int) -> [Int] {
    var memo: [Int: [Int]] = [0: [1], 1: [1, 1]]
        
    if rowIndex == 0 || rowIndex == 1 {
        return memo[rowIndex]!
    }
    
    for i in 2...rowIndex {
        memo[i] = [Int](repeating: 1, count: i + 1)
        
        for j in 1..<memo[i]!.count-1 {
            memo[i]![j] = memo[i - 1]![j - 1] + memo[i - 1]![j]
        }
    }
    
    return memo[rowIndex]!
}

// 다른 사람의 풀이
func getRow(_ rowIndex: Int) -> [Int] {        
    if rowIndex == 0{
        return [1]
    }
    
    if rowIndex == 1{
        return [1,1]
    }
    
    var prevRow = [1,1]
    for currentRowIndex in 2...rowIndex{
        var currentRow = [1]
        for prevRowIndex in 1..<currentRowIndex{
            currentRow.append(prevRow[prevRowIndex-1]+prevRow[prevRowIndex])
        }
        currentRow.append(1)
        prevRow = currentRow
    }
    
    return prevRow
}

print(getRow(3)) // [1,3,3,1]
print(getRow(0)) // [1]
print(getRow(1)) // [1,1]