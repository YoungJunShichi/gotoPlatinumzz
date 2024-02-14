//
//  17413 단어 뒤집기 2.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/14/24.
//

import Foundation

let input = readLine()!
var tag = ""
var word = ""

for ele in input {
    if ele == "<" {
        tag.append(ele)
        if !word.isEmpty {
            print(String(word.reversed()),terminator: "")
            word = ""
        }
    } else if ele == ">" {
        tag.append(ele)
        print(tag, terminator: "")
        tag = ""
    } else {
        if tag.first == "<" {
            tag.append(ele)
        } else if ele == " " {
            print(String(word.reversed()),terminator: " ")
            word = ""
        } else {
            word.append(ele)
        }
    }
}

if !word.isEmpty {
    print(String(word.reversed()))
}
