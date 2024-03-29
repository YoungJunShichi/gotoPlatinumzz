//
//  main.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/12/24.
//

import Foundation

let input = readLine()!

var stack: [Character] = []
var prev: Character? // 이전문자 판단
var answer = 0

for e in input {
    if e == "(" {
        stack.append(e)
    } else { // ")" 일 때
        stack.removeLast()
        if prev == "(" { // 이전 문자가 "("면, 레이저 아님 그냥 막대기 추가
            answer += stack.count
        } else {
            answer += 1
        }
    }
    prev = e
}

print(answer)
