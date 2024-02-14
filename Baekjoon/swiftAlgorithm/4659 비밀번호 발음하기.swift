//
//  4659 비밀번호 발음하기.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/14/24.
//

import Foundation

while true {
    let input = readLine()!
    if input == "end" {
        break
    }
    
    let arrayInput = Array(input)
    
    var continueConsonantCnt = 0
    var continueVowelCnt = 0
    var flag = true
    
    for idx in 0..<arrayInput.count {
        // 1번 조건
        if !(input.contains("a") || input.contains("e") || input.contains("i")  || input.contains("o") || input.contains("u")) {
            flag = false
        }
        
        
        // 2번 조건
        if arrayInput[idx] == "a" || arrayInput[idx] == "e" || arrayInput[idx] == "i" || arrayInput[idx] == "o" || arrayInput[idx] == "u" {
            continueVowelCnt += 1
            continueConsonantCnt = 0
        } else {
            continueVowelCnt = 0
            continueConsonantCnt += 1
        }
        
        if continueVowelCnt == 3 || continueConsonantCnt == 3 {
            flag = false
        }
        
        // 3번 조건
        if arrayInput.count > 1 && idx >= 1 {
            if arrayInput[idx-1] != "e" && arrayInput[idx-1] != "o" {
                if arrayInput[idx] == arrayInput[idx-1] {
                    flag = false
                }
            }
        }
    }
    
    if flag {
        print("<" + input + ">" + " is acceptable.")
    } else {
        print("<" + input + ">" + " is not acceptable.")
    }
}
