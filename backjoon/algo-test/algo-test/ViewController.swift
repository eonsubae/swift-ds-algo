import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(countBits(2)) // [0,1,1]
        print(countBits(5)) // [0,1,1,2,1,2]
    }
    
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()
        
        for num in 0...n {
            let bits = String(num, radix: 2).compactMap { Int(String($0)) }
            result.append(bits.reduce(0) { $0 + $1 })
        }
        
        return result
    }
}
