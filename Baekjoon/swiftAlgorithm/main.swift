//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

var tempArr: [[Character]] = []
var maxRange = 0
var result: String = ""

for _ in 0..<5 {
    let input = Array(readLine()!)
    if maxRange < input.count {
        maxRange = input.count
    }
    tempArr.append(input)
}

for idx in 0..<maxRange {
    for ele in tempArr {
        if idx < ele.count {
            result += String(ele[idx])
        }
    }
}

print(result)
