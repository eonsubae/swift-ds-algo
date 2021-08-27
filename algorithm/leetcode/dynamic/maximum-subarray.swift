func maxSubArray(_ nums: [Int]) -> Int {
    var numArray = nums
    var answer: Int = numArray[0]
    
    for i in 1..<numArray.count {
        numArray[i] = max(numArray[i], numArray[i]+numArray[i - 1])
        answer = max(answer, numArray[i])
    }
    
    return answer
}

print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))