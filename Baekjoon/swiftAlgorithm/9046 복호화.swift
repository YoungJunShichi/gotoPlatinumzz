//
//  9046 복호화.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

let tc = Int(readLine()!)!


for _ in 0..<tc {
    let input = Array(readLine()!.replacingOccurrences(of: " ", with: ""))
    var dict = [Character: Int]()
    input.forEach {
        if let count = dict[$0] {
            dict[$0] = count + 1
        } else {
            dict[$0] = 1
        }
    }
    
    var maxCnt = 0
    
    for (k,v) in dict {
        if v == dict.values.max() {
            maxCnt += 1
        }
    }
    
    if maxCnt >= 2 {
        print("?")
    } else {
        print(dict.max { $0.value < $1.value }!.key)
    }
}
