import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(generate(5)) // [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
        print(generate(1)) // [[1]]
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()
        
        for row in 1...numRows {
            if row == 1 {
                triangle.append([1])
                continue
            }
            if row == 2 {
                triangle.append([1, 1])
                continue
            }
            
            var newRowValues = [Int](repeating: 1, count: row)
            let previousRowValues = triangle[row - 2]
            
            for i in 1...row-2 {
                newRowValues[i] = previousRowValues[i-1] + previousRowValues[i]
            }
            
            triangle.append(newRowValues)
        }
        
        
        return triangle
    }
}
