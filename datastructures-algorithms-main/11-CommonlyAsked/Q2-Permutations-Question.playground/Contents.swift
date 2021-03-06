import UIKit

/*
 ___                   _        _   _
| _ \___ _ _ _ __ _  _| |_ __ _| |_(_)___ _ _  ___
|  _/ -_) '_| '  \ || |  _/ _` |  _| / _ \ ' \(_-<
|_| \___|_| |_|_|_\_,_|\__\__,_|\__|_\___/_||_/__/

 Challenge: Given two strings, check if one is a permutation of the other.
 
 */

func isPermutation(_ text: String, _ perm: String) -> Bool {
    var textCharDic = [Character: Int]()
    var permCharDic = [Character: Int]()

    for t in text {
        if textCharDic[t] == nil {
            textCharDic[t] = 1
        } else {
            textCharDic[t]! += 1
        }
    }
    
    for t in perm {
        if permCharDic[t] == nil {
            permCharDic[t] = 1
        } else {
            permCharDic[t]! += 1
        }
    }
    
    return textCharDic == permCharDic
}

isPermutation("abc", "cba") // true
isPermutation("abc", "xyz") // false
