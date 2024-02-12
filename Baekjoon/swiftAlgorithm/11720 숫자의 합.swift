//
//  11720 숫자의 합.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

let n = Int(readLine()!)!

let num = Array(readLine()!)

var total = 0

num.forEach {
    total += Int(String($0))!
}

print(total)
