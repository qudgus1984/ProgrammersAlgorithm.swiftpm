import Foundation

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


