/*
  Given an integer numRows, return the first numRows of Pascal's triangle.

  In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
*/

/*
  Example 1:
  Input: numRows = 5
  Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
  
  Example 2:
  Input: numRows = 1
  Output: [[1]]
   
  Constraints:
  1 <= numRows <= 30
*/

// 나의 풀이
func generate(_ numRows: Int) -> [[Int]] {
    var triangle = [[Int]]()
    
    for row in 1...numRows {
        if row == 1 {
            triangle.append([1])
            continue
        }
        if row == 2 {
            triangle.append([1, 1])
            continue
        }
        
        var newRowValues = [Int](repeating: 1, count: row)
        let previousRowValues = triangle[row - 2]
        
        for i in 1...row-2 {
            newRowValues[i] = previousRowValues[i-1] + previousRowValues[i]
        }
        
        triangle.append(newRowValues)
    }
    
    
    return triangle
}

// 다른 사람의 풀이
func generate(_ numRows: Int) -> [[Int]] {
    var result = [[Int]]()
  
    for i in 0..<numRows {
        // init a new array for each row to store Integers
        result.append([])
        for j in 0..<i+1 {
            // check if head or tail, if so, append value 1
            if j==0 || j==i {
                result[i].append(1)
            }
            // if not head or tail, then append sum of previous row(i-1) with "index-1"(j-1) and "same index"(j) value
            else {
                result[i].append(result[i-1][j-1] + result[i-1][j])
            }
        }
    }

    return result
}

print(generate(5)) // [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
print(generate(1)) // [[1]]