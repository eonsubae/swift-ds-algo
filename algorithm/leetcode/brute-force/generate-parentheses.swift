var result = [String]()
    
func generateParenthesis(_ n: Int) -> [String] {
    generate("", n, n)
    return result
}

func generate(_ curr: String, _ l: Int, _ r: Int) {
    if (l < 0 || r < 0) {
        return
    }
    if l == 0 && r == 0 {
        result.append(curr)
        return
    }
    
    if (l > 0) {
        var curr = curr
        curr += "("
        generate(curr, l - 1, r)
    } 
    
    if (l < r && r > 0) {
        var curr = curr
        curr += ")"
        generate(curr, l, r - 1)
    }
}