//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

let input = Int(readLine()!)!


var result = 1

for ele in 0...input {
    result *= ele
}

var cnt = 0

while true {
    if input == 0 {
        print(cnt)
        break
    }
    if result % 10 == 0 {
        cnt += 1
        result /= 10
    } else {
        print(cnt)
        break
    }
}
