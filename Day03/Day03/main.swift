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

// Nil 병합 연산자
let defaultColorName = "red"
var userDefinedColorName : String? // Optional 변수

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

// 범위 연산자
print(1...10)

for i in 1...5{
    print(i)
}

var sum = 0
for i in 1...10000{
    sum += i
}
print("- \(sum) -")

// 구구단 5단 출력
for r in 1..<10{
    print("5 X \(r) = \(5*r)")
}

let names = ["Kwon", "Kim", "Park", "Lee"] // Collection
for i in 0..<names.count{ // 반닫힌 범위 연산자
    print("Person \(i+1) : \(names[i])")
}

// 논리 연산자
// 논리 부정 연산자
let allowEntry = false
if !allowEntry {
    print("Access Denied")
}

// 논리 곱 연산자 - And
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("WELCOME!")
}else{
    print("Access Denied")
}

// 논리 합 연산자 - Or
if enteredDoorCode || passedRetinaScan {
    print("WELCOME!")
}else{
    print("Access Denied")
}

