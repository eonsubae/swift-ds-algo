import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(fib(2)) // 1
        print(fib(3)) // 2
        print(fib(4)) // 3
    }
    
    var memo = [Int: Int]()
    
    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        
        if (memo[n] != nil) {
            return memo[n]!
        } else {
            memo[n] = fib(n-2) + fib(n-1)
            return memo[n]!
        }
    }
}
