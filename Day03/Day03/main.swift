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

