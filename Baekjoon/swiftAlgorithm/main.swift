//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

let n = Int(readLine()!)!

var stack: [Int] = []

var count = 1

var answer: [String] = []

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    while count <= input {
        stack.append(count)
        answer.append("+")
        count += 1
    }
    
    if stack.last == input {
        stack.popLast()
        answer.append("-")
    } else {
        print("NO")
        exit(0)
    }
    
}

print(answer.joined(separator: "\n"))

