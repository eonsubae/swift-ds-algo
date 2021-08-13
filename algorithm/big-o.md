# What is Big O Notation and how does it work?

Big O란
* 알고리즘의 성능을 비교하는 방법
* 어떤 알고리즘의 성능이 일반적으로 얼마나 빠르고 얼마나 적은 공간을 차지하는지를 측정한다
* Big O는 성능의 측정을 위해 최악의 경우를 가정하는 표기법이다

### O(n)

```swift
import Foundation

func findNemo(_ arr: [String]) {
  let before = Date()

  for i in 0..<arr.count {
    if arr[i] == "nemo" {
      print("Found him!")
    }
  }

  let after = Date()
  let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
  let milliSeconds: Double = Double(component.nanosecond! / 1000000)
  print("Finding nemo took: \(milliSeconds)")
}

// let nemo = ["nemo"]
let nemo = Array<String>(repeating: "", count: 100000)
findNemo(nemo)
```
* findNemo 함수는 인자로 들어오는 배열의 길이만큼 실행시간이 길어진다
* 이 때, 배열의 길이와 시간은 선형 관계이므로 O(n)으로 표현할 수 있다
* 이와 같이 입력값과 연산횟수의 관계를 몇가지 형태로 나타낸 것이 Big O 표기법이다

### O(1)

```swift
func constantTime(_ n: Int) -> Int {
  let result = n * n
  return result
}
```

### O(log n)

```swift
func logarithmicTime(_ N: Int) -> Int {
  var n = N
  var result = 0
  while n > 1 {
    n /= 2
    // print(n)
    result += 1
  }
  return result
}
logarithmicTime(128)
```   

### O(n^2)

```swift
func quadratic(_ n: Int) -> Int {
  var result = 0
  for i in 0..<n {
    for j in i..<n {
      result += 1
      print("\(i) \(j)")
    }
  }
}
quadratic(16)
```

### 속도와 메모리
```swift
func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
  for i in 0..<A.count {
    for j in 0..<B.count {
      if A[i] == B[j] {
        return true
      }
    }
  }
  return false
}
commonItemsBrute([1, 2, 3], [4, 5, 6])
commonItemsBrute([1, 2, 3], [3, 5, 6])

func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
  var hashA = [Int: Bool]()
  for a in A {
    hashA[a] = true
  }

  for b in B {
    if hashA[b] == true {
      return true
    }
  }
  return false
}
commonItemsHash([1, 2, 3], [4, 5, 6])
```
* commonItemsBrute 함수와 commonItemsHash 함수는 같은 결과를 반환하는 함수다
* 하지만 commonItemsBrute의 시간복잡도는 O(n^2)이고, commonItemsHash의 시간복잡도는 O(2n)이다
* commonItemsHash에서는 딕셔너리로 추가공간을 만들어 속도를 향상시키고 있다
* 이처럼 보다 많은 공간(메모리)의 사용으로 퍼포먼스를 향상시키는 것을 고려해볼 수 있다(Trade off)