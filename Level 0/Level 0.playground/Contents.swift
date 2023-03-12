import Foundation
/*
 //MARK: 이진수 더하기
 func solution(_ bin1:String, _ bin2:String) -> String {
 return String(Int(bin1, radix: 2)! + Int(bin2, radix: 2)!, radix: 2)
 }
 
 //MARK: k의 개수
 func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
 var x = ""
 for z in i...j {
 x += "\(z)"
 }
 return Array(x).filter { String($0) == String(k)}.count
 }
 
 //MARK: 공던지기
 func solution(_ numbers:[Int], _ k:Int) -> Int {
 var x = 0
 for i in 0...k - 2 {
 x += 2
 if x > numbers.count - 1 {
 x -= numbers.count
 }
 }
 return numbers[x]
 }
 
 //쉬운풀이
 func solution(_ numbers:[Int], _ k:Int) -> Int {
 return numbers[((k-1)*2) % numbers.count]
 }
 
 
 //MARK: 잘라서 배열로 저장하기
 func solution(_ my_str:String, _ n:Int) -> [String] {
 var answer = ""
 var arr: [String] = []
 for i in my_str {
 answer += String(i)
 if answer.count == n {
 arr.append(answer)
 answer = ""
 }
 }
 
 if !answer.isEmpty {
 arr.append(answer)
 }
 return arr
 }
 
 //MARK: 컨트롤 제트
 
 func solution(_ s:String) -> Int {
 var arr =  s.components(separatedBy: " ")
 var result: [String] = []
 for i in 0...arr.count - 1 {
 if arr[i] == "Z" {
 result.append(String(-Int(arr[i - 1])!))
 } else {
 result.append(arr[i])
 }
 }
 return result.map { Int($0)!}.reduce(0, +)
 }
 
 //MARK: 문자열 계산하기
 func solution(_ my_string:String) -> Int {
 var arr = my_string.components(separatedBy: " ")
 var result = Int(String(arr[0]))!
 for i in 0...arr.count - 1 {
 if arr[i] == "+" {
 result += Int(String(arr[i + 1]))!
 } else if arr[i] == "-" {
 result -= Int(String(arr[i + 1]))!
 }
 }
 return result
 }
 
 func solution(_ balls:Int, _ share:Int) -> Int {
 var arr: [NSDecimalNumber] = []
 for i in 0...share - 1 {
 arr.append(NSDecimalNumber(balls - i))
 }
 var x = arr.reduce(NSDecimalNumber(1), *)
 var y = NSDecimalNumber((1...share).reduce(1,*))
 return Int(x / y)
 
 }
 
 //MARK: 삼각형의 완성조건 (2)
 func solution(_ sides:[Int]) -> Int {
 var arr: [Int] = []
 for i in 1..<sides[0] + sides[1] {
 if i < sides.max()! {
 if i + sides.min()! > sides.max()! {
 arr.append(i)
 }
 } else {
 arr.append(i)
 }
 }
 print(arr)
 return arr.count
 }
 
 //MARK: 캐릭터의 좌표
 func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
 var arr = [0,0]
 var x = (board[0] - 1) / 2
 var y = (board[1] - 1) / 2
 
 for i in keyinput {
 if i == "right" {
 if arr[0] < x {
 arr[0] += 1
 }
 } else if i == "left" {
 if arr[0] > -x  {
 arr[0] -= 1
 }
 } else if i == "up" {
 if arr[1] < y {
 arr[1] += 1
 }
 } else if i == "down" {
 if arr[1] > -y {
 arr[1] -= 1
 }
 }
 }
 return arr
 }
 
 //MARK: 로그인 성공?
 
 func solution(_ id_pw:[String], _ db:[[String]]) -> String {
 for i in 0...db.count - 1 {
 if id_pw[0] == db[i][0] {
 if db[i][1] == id_pw[1] {
 return "login"
 } else {
 return "wrong pw"
 }
 }
 }
 return "fail"
 }
 
 //MARK: 치킨 쿠폰
 
 func solution(_ chicken:Int) -> Int {
 if chicken < 10 {
 return 0
 } else {
 return (chicken - 10) / 9 + 1
 }
 }
 
 //MARK: 등수 매기기
 
 func solution(_ score:[[Int]]) -> [Int] {
 var arr: [Double] = []
 for i in score {
 arr.append(Double(i[0] + i[1]) / 2)
 }
 
 var ranks = Array(repeating: 1, count: score.count)
 for i in 0..<arr.count {
 for j in 0..<arr.count {
 if i == j { continue }
 if arr[i] < arr[j] {
 ranks[i] += 1
 }
 }
 }
 return ranks
 }
 
 //MARK: 문자열 밀기
 func shiftString(_ s: String) -> String {
 let arr = Array(s)
 var shiftedArr = arr
 shiftedArr.removeLast()
 shiftedArr.insert(arr.last!, at: 0)
 return String(shiftedArr)
 }
 
 func solution(_ A:String, _ B:String) -> Int {
 var shifted = A
 var count = 0
 while shifted != B {
 shifted = shiftString(shifted)
 count += 1
 if count > A.count {
 return -1
 }
 }
 return count
 }
 
 
 
 func solution(_ polynomial:String) -> String {
 var arr = polynomial.components(separatedBy: " ")
 var num = 0
 var numX = 0
 for i in arr {
 if Int(i) != nil {
 num += Int(i)!
 } else if i.contains("x") {
 if i == "x" {
 numX += 1
 } else {
 numX += Int(String(i.dropLast()))!
 }
 }
 }
 
 switch (num, numX) {
 case let(x,y) where x == 0 && y != 0 && y != 1:
 return "\(numX)x"
 case let(x,y) where x != 0 && y == 0:
 return "\(num)"
 case let(x,y) where x != 0 && y != 0 && y != 1:
 return "\(numX)x + \(num)"
 case let(x,y) where x == 0 && y == 0:
 return ""
 case let(x,y) where x == 0 && y == 1:
 return "x"
 case let(x,y) where x != 0 && y == 1:
 return "x + \(num)"
 
 case (_, _):
 return ""
 }
 }
 
 
 func solution(_ array:[Int]) -> Int {
 // 각 숫자의 개수를 세는 딕셔너리
 var dict: [Int: Int] = [:]
 
 // 배열을 순회하면서 각 숫자의 개수를 센다.
 for num in array {
 if let count = dict[num] {
 dict[num] = count + 1
 } else {
 dict[num] = 1
 }
 }
 
 // 최빈값을 찾는다.
 var maxCount = 0
 var mode = -1
 for (num, count) in dict {
 if count > maxCount {
 maxCount = count
 mode = num
 }
 }
 
 // 최빈값이 여러 개인지 확인한다.
 var count = 0
 for (_, c) in dict {
 if c == maxCount {
 count += 1
 }
 }
 
 return count > 1 ? -1 : mode
 }
 */

func solution(_ quiz:[String]) -> [String] {
    var resultArr: [String] = []
    
    for i in quiz {
        var arr = i.components(separatedBy: "=")
        var arr2 = arr[0].components(separatedBy: " ")
        var x = arr[1].components(separatedBy: " ")
        if arr2[1] == "-" {
            if Int(arr2[0])! - Int(arr2[2])! == Int(x[1])! {
                resultArr.append("O")
            } else {
                resultArr.append("X")
            }
        } else if arr2[1] == "+" {
            if Int(arr2[0])! + Int(arr2[2])! == Int(x[1])! {
                resultArr.append("O")
            } else {
                resultArr.append("X")
            }
        }
    }
    return resultArr
}


