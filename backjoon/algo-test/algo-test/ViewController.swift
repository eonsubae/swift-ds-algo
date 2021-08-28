import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(tribonacci(4)) // 4
        print(tribonacci(25)) // 1389537
    }
    
    var memo = [Int: Int]()
    
    func tribonacci(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        if n == 2 { return 1 }
        
        if memo[n] != nil {
            return memo[n]!
        } else {
            memo[n] = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
            return memo[n]!
        }
    }
}
