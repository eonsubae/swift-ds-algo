import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(maxProfit([7,1,5,3,6,4])) // 5
        print(maxProfit([7,6,4,3,1])) // 0
    }
    
    
    
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        
        var min = prices[0]
        var def = 0
        
        for price in prices {
            if price < min {
                min = price
            } else if ((price - min) > def) {
                def = price - min
            }
        }
        
        return def
    }
}
