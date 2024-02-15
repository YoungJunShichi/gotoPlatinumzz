//
//  2609 최대공약수와 최소공배수.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/15/24.
//

import Foundation

var share: Int = 2
var greatestCommonDivisor = 1
var leastCommonMultiple = 1

let input = readLine()!.split(separator: " ").map{Int($0)!}
var a = input[0], b = input[1]
while a >= share && b >= share {
    if a % share == 0 && b % share == 0 {
        greatestCommonDivisor *= share
        leastCommonMultiple *= share
        a /= share
        b /= share
    } else {
        share += 1
    }
}

print(greatestCommonDivisor)
print(leastCommonMultiple * a * b)
