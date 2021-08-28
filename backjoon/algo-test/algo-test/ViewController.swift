import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        print(isSubsequence("abc", "ahbgdc")) // true
        print(isSubsequence("axc", "ahbgdc")) // false
    }
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let tc = Array(t.utf8)
        let sc = Array(s.utf8)
        
        let tccount = tc.count
        let sccount = sc.count
        
        var tcIdx = 0
        var scIdx = 0
        
        while scIdx < sccount && tcIdx < tccount {
            
            let sAtIdx = sc[scIdx]
            let tAtIdx = tc[tcIdx]
            
            if sAtIdx == tAtIdx {
                scIdx += 1
            }
            tcIdx += 1
        }
        
        return scIdx == sccount
    }
}
