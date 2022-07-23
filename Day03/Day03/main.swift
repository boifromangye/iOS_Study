//
//  main.swift
//  Day03
//
//  Created by 권태우 on 2022/07/23.
//

import Foundation

// 비교 연산자
print(1 == 1)
print(2 != 1)
print(2 > 1)
print(1 < 2)
print(1 >= 1)
print(2 <= 1)

let name = "world"

if name == "world"{
    print("Hello \(name)!")
} else{
    print("I'm sorry, \(name).")
}

print((1, "zebra") < (2, "apple"))
print((3, "apple") < (3, "bird"))
print("a" < "b") // "가" < "나"
print((4, "dog") == (4, "dog"))
print(("blue", -1) < ("purple", 1))
print(true == false) // Binary operator '>' cannot be applied to two 'Bool' operands

// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight : Int

if hasHeader{
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 20
}
print(rowHeight)

// 홀짝수 판별
let num = 10

if num % 2 == 0{
    print("Even")
}else{
    print("Odd")
}

// 삼항 조건 연산자
let contentHeight1 = 40
let hasHeader1 = true
let rowHeight1 = contentHeight1 + (hasHeader ? 50 : 20)

print(rowHeight1)
