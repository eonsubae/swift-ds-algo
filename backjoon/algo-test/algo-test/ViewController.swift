import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(getMaximumGenerated(7)) // 3
        print(getMaximumGenerated(2)) // 1
        print(getMaximumGenerated(3)) // 2
    }
    
    func getMaximumGenerated(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        
        var generatedArray = [Int](repeating: 0, count: n + 1)
        generatedArray[0] = 0
        generatedArray[1] = 1
        var odd = 2
        
        for i in 2...n {
            if i % 2 == 0 {
                generatedArray[i] = generatedArray[i / 2]
            }
            else {
                generatedArray[i] = generatedArray[i - odd] + generatedArray[i - odd + 1]
                odd += 1
            }
        }
        
        return generatedArray.reduce(0) { max($0, $1) }
    }
    
}
