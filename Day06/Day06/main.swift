//
//  main.swift
//  Day06
//
//  Created by 권태우 on 2022/07/31.
//

import Foundation

/*
//  사용자로부터 더할 숫자의 개수를 정한 후 숫자를 입력받아 합계 구하기

var sumNum = 0

print("몇 개의 숫자를 더할까요? ", terminator: "")
var inpNum = Int(readLine()!)
//print("===> \(inpNum!) : ", type(of: inpNum))

if let repNum: Int = inpNum{
    print("\(repNum)개의 숫자를 입력하세요.")
    for _ in 1...repNum{
        let innerCount = Int(readLine()!)
        sumNum += innerCount!
    }
    print("입력한 수들의 합은 \(sumNum)입니다.")
}else{
    print("Input value is wrong!")
}
 */

// Exercise
/*
 입력한 자릿수 정수의 합을 구하는 프로그램
 
 Enter an integer(0~9) : 12345678
 Sum of digits = 36
 
 */

print("Enter an integer(0~9) :", terminator: " ")
var inputNum = Int(readLine()!)!
var sum = 0

while inputNum != 0{
//    if inputNum == 0{
//        break
//    }
    sum += inputNum % 10
    inputNum /= 10
}

print("Sum of digits = \(sum)")
