//
//  20291 파일 정리.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/14/24.
//

import Foundation

let n = Int(readLine()!)!

var extensionFile: [String] = []
var dict: [String: Int] = [:]

// input
for _ in 0..<n {
    let input = readLine()!
    if let range = input.range(of: ".", options: .backwards) {
        let extensionString = String(input.suffix(from: range.upperBound))
        extensionFile.append(extensionString)
    }
    
}


extensionFile.forEach {
    if let count = dict[$0] {
        dict[$0] = count + 1
    } else {
        dict[$0] = 1
    }
}

let sortedDict = dict.sorted(by: {$0.key < $1.key})

for (k,v) in sortedDict {
    print(k, v)
}
