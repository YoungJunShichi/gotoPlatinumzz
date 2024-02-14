//
//  1157 단어 공부.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/14/24.
//

import Foundation

let word = Array(readLine()!)

var dict: [String: Int] = [:]

var upperCasedWord: [String] = []

var maxValueCnt = 0

word.forEach {
    upperCasedWord.append($0.uppercased())
}

upperCasedWord.forEach {
    if let count = dict[$0] {
        dict[$0] = count + 1
    } else {
        dict[$0] = 1
    }
}

let maxValue = dict.values.max()

for (_,v) in dict {
    if v == maxValue {
        maxValueCnt += 1
    }
}

if maxValueCnt >= 2 {
    print("?")
} else {
    print(dict.max { $0.value < $1.value }!.key)
}
