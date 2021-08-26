import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(minimumTime(5, [3, 1, 4, 3, 2])) // 32
    }
    
    var memo = [Int: Int]()

    func minimumTime(_ n: Int, _ p: [Int]) -> Int {
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
}
