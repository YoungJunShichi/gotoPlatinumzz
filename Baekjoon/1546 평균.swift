import Foundation

let n = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map{Int($0)!}

var max: Int = -1000000

var total: Double = 0.0

var avg: Double = 0.0

let sortedInput = input.sorted(by: <) // 오름차순 정렬

max = sortedInput[n-1]

for idx in 0..<input.count {
    total += ((Double(input[idx]) / Double(max)) * 100)
}

avg = total / Double(n)

print(avg)
