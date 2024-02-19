//
//  9012 괄호.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/19/24.
//

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var flag: Bool = true
    var stack: [Character] = []
    let input = readLine()!
    
    for ele in Array(input) {
        if ele == "(" {
            stack.append(ele)
        } else {
            if stack.isEmpty {
                flag = false
                break
            }
            stack.removeLast()
        }
    }
    
    if !stack.isEmpty {
        flag = false
    }
    
    if flag {
        print("YES")
    } else {
        print("NO")
    }
}
