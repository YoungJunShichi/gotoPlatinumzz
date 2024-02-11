//
//  2675 문자열 반복.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/11/24.
//

import Foundation

let t = Int(readLine()!)!
var result: String = ""
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map {String($0)}
    let r = Int(input[0])!, s = Array(input[1])
    
    for ele in s {
        result += String(repeating: ele, count: r)
    }
    print(result)
    result = ""
}
