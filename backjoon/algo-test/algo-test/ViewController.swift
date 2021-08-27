import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(getRow(3)) // [1,3,3,1]
        print(getRow(0)) // [1]
        print(getRow(1)) // [1,1]
    }
    
    
    
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
}
