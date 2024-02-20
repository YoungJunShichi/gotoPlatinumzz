//
//  10866 덱.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/21/24.
//

import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "push_front":
        stack.insert(Int(input[1])!, at: 0)
    case "push_back":
        stack.append(Int(input[1])!)
    case "pop_front":
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.removeFirst())
        }
    case "pop_back":
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.removeLast())
        }
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty {
            print("1")
        } else {
            print("0")
        }
    case "front":
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.first!)
        }
    case "back":
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack.last!)
        }
    default:
        break
    }
}

