//
//  main.swift
//  Day02
//
//  Created by 권태우 on 2022/07/17.
//

import Foundation

// 문자열과 문자의 결합
let str1 = "Hello"
let str2 = " there"
var welcome = str1 + str2
print(welcome)

var inst = "Look over"
inst += str2
print(inst)

let exclamationMark1 : Character = "!"
welcome.append(exclamationMark1)
print(welcome)

// 문자열 길이
let str: String = "12345,6789"
print(str.count)

if str.count == 0 {
    print("No Data")
}
else {
    print("Welcome, \(str)!")
}

// Any
var someAny : Any = 100
print(someAny)
someAny = "Any type can be assigned"
print(someAny)
someAny = 123.12
print(someAny)

var someDouble : Double = 12.11
//print(someAny + someDouble)
//Any를 Double로 변환
let someAny1 : Double = someAny as! Double
print(someDouble + someAny1)

// nil : null, NULL, Null, NA, NaN
/*
 - nil은 "없음"을 의미
 */

// Tuple
// Tuple 사용 전 선언 및 출력 방법
var dialCode = 82
var isoCode = "KR"
var name = "Korea"
print(dialCode, isoCode, name)

// Tuple 사용
var nation = (82, "KR", "Korea")
print(nation.0, nation.1, nation.2)
var nation1 = (dialCode1 : 82, isoCode1 : "KR", name1 : "Korea")
print(nation1.dialCode1, nation1.1)

let person1 = ("John Doe", "201 Main Street", 35)
//John Doe lives at 201 Main Street and is 35 years old.
print("\(person1.0) lives at \(person1.1) and is \(person1.2) years old.")

// Type 별칭(Alias)
// 기존 Type이든 사용자 Type이든 별칭을 사용할 수 있음.

typealias 정수 = Int
let age : 정수 = 20

typealias person = (name : String, height : Int, marriage : Bool)
var p1 : person = ("Yubi", 180, true)
var p2 : person = ("Kwanwoo", 190, true)
print(p1, p2)

/*
 Tuple을 사용하여 직사각형의 넓이와 둘레를 계산하시오.
 - 직사각형의 속성 : 이름, 가로, 세로, 넓이, 둘레
 */
typealias rect = (name : String, height : Double, width : Double, area : Double, boder : Double)

var r1 : rect = ("R1", 5, 6, 0, 0)
var r2 : rect = ("R2", 15, 7, 0, 0)

r1.area = r1.width * r1.height
r2.area = r2.width * r2.height

r1.boder = (r1.width + r1.height) * 2
r2.boder = (r2.width + r2.height) * 2

print(r1)
print(r2)

// ---------------------------
//기본 연산자
// ---------------------------

// 할당 연산자
let a = 2

// Tuple을 이용한 할당 연산자
let (x1, x2) = (1, 2)
var (x3, x4) = (3, "Kim")

// 사칙연산자
print(1 + 2)
print(1 - 2)
print(4 * 5)
print(10 / 3)
print(10 % 2)

// 단항 음수 연산자
var someInt : Int
let someInt2 = 100
someInt = -someInt2
print(someInt)
