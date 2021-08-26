// 나의 풀이
func deliverSugar(_ n: Int) -> Int {
    if n < 3 || n > 5000 {
        return 0
    }
    
    var restKilogram = n
    var result = 0
    
    while restKilogram != 0 {
        if restKilogram % 5 == 0 {
            return result + restKilogram / 5
        }
        else if restKilogram < 3 {
            return -1
        }
        
        restKilogram -= 3
        result += 1
    }
    
    return result
}

// 다른 사람
func solution(_ n: Int) -> Int{ 
    var result = 0 
    
    if n % 5 == 0 { return n / 5 } 
    
    while (n >= 0) { 
        n -= 3 
        result += 1 
        
        if n % 5 == 0 { 
            return result + (n / 5) 
        } 
    } 
    
    return -1 
}

print(deliverSugar(18)) // 4
print(deliverSugar(4)) // -1
print(deliverSugar(6)) // 2
print(deliverSugar(9)) // 3
print(deliverSugar(11)) // 3