import Foundation

//이진수 더하기
func solution(_ bin1:String, _ bin2:String) -> String {
    return String(Int(bin1, radix: 2)! + Int(bin2, radix: 2)!, radix: 2)
}

//k의 개수
func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var x = ""
    for z in i...j {
        x += "\(z)"
    }
    return Array(x).filter { String($0) == String(k)}.count
}
