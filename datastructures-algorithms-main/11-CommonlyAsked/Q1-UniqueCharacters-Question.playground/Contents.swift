import UIKit

/*
 _   _      _                ___ _
| | | |_ _ (_)__ _ _  _ ___ / __| |_  __ _ _ _ ___
| |_| | ' \| / _` | || / -_) (__| ' \/ _` | '_(_-<
 \___/|_||_|_\__, |\_,_\___|\___|_||_\__,_|_| /__/
                |_|

 Challenge: Given a string, see if you can detect whether it contains only unique chars.
 
 */

func isUnique(_ text: String) -> Bool {
    var isUniqueChar: [Character: Bool] = [:]
    
    for t in text {
        if isUniqueChar[t] == nil {
            isUniqueChar[t] = true
        } else {
            isUniqueChar[t] = false
        }
    }
    
    var uniqueCharCount = 0
    
    for bool in isUniqueChar.values {
        if bool == true {
            uniqueCharCount += 1
            break
        }
    }
    
    return uniqueCharCount > 0 ? true : false
}

isUnique("ab")
isUnique("aa")
isUnique("abcdefghijklmnopqrstuvwxyz")
