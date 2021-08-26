import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // (3 ≤ N ≤ 5000) ex. N = 18, 4, 6, 9, 11 result = 4, -1 , 2, 3, 3
        
        print(deliverSugar(18)) // 4
        print(deliverSugar(4)) // -1
        print(deliverSugar(6)) // 2
        print(deliverSugar(9)) // 3
        print(deliverSugar(11)) // 3
    }

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
}
