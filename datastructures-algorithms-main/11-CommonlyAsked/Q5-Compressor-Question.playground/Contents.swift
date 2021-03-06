import UIKit

/*
 ___
/ __|___ _ __  _ __ _ _ ___ ______ ___ _ _
|(__/ _ \ '  \| '_ \ '_/ -_|_-<_-</ _ \ '_|
\___\___/_|_|_| .__/_| \___/__/__/\___/_|
              |_|
 
 // Challenge: Give a string with repeating characters (i.e. "aaabb") write
 // an algorithm that will compress the string down to the character, followed
 // by the number of times it appears in the string (i.e "a3b2").
 // If the compressed string is not smaller than original, return original.

 */

func compress(_ str: String) -> String {
    var pointer = 1
    var pivot = 0
    let strArray = Array(str)
    var result = ""
    
    while pointer < strArray.count {
        if strArray[pivot] == strArray[pointer] && pointer != strArray.count - 1 {
            pointer += 1
        } else {
            print(pivot, pointer)
            if pointer - pivot >= 2 {
                let compressedStr = "\(strArray[pivot])\(pointer - pivot)"
                result.append(compressedStr)
                print(result)
            } else {
                print(pointer - pivot)
                for i in pivot...pointer {
                    result.append(String(strArray[i]))
                }
            }
            pivot = pointer
            pointer += 1
        }
    }
    
    return result
}

compress("aaabb")           // a3b2
compress("aabb")            // aabb
compress("ab")              // ab
compress("abc")             // abc
compress("zzz")             // z3
compress("aabbaabb")        // aabbaabb (not shorter)
