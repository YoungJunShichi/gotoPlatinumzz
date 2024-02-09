//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/9/24.
//

import Foundation

var remain: Set<Int> = []

for _ in 0..<10 {
    let input = Int(readLine()!)!
    remain.insert(input % 42)
}

print(remain.count)
