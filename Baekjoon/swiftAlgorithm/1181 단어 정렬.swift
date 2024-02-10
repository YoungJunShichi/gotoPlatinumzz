//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/11/24.
//

import Foundation

let n = Int(readLine()!)!

var tempSet: Set<String> = []

for _ in 0..<n {
    let input = readLine()!
    tempSet.insert(input)
}

Array(tempSet).sorted { $0 < $1 }.sorted { $0.count < $01.count }.forEach { print($0 )}
