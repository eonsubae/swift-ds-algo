import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(divisorGame(2)) // true
        print(divisorGame(3)) // false

    }
    
    func divisorGame(_ n: Int) -> Bool {
        return n % 2 == 0
    }
}
