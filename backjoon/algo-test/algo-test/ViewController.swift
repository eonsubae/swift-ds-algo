import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(climbStairs(2)) // 2
        print(climbStairs(3)) // 3
        print(climbStairs(4)) // 5
        print(climbStairs(5)) // 8
    }
    
    func climbStairs(_ n: Int) -> Int {
        var result: [Int] = [0,1,2]
        
        if n == 1 || n == 2 { return result[n] }
        
        for i in 3...n {
            result.append(result[i-2]+result[i-1])
        }
        
        return result[n]

    }
}
