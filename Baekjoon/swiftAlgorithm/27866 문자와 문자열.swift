//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/11/24.
//

import Foundation

let input = readLine()!
let i = Int(readLine()!)!

let inputArr = Array(input)

for idx in 0..<inputArr.count {
    if idx == i-1 {
        print(inputArr[idx])
        break
    }
}
