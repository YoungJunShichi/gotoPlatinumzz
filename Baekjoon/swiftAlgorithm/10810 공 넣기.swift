//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/10/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0], m = input[1]

var result: [Int] = Array(repeating: 0, count: n)


for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    for ele in input[0]...input[1] {
        result[ele-1] = input[2]
    }
}

print(result.map{String($0)}.joined(separator: " "))
