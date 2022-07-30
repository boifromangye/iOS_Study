//
//  main.swift
//  Day05
//
//  Created by 권태우 on 2022/07/30.
//

import Foundation

// Dictionary : key와 value로 구성된 컬렉션
// key가 String 타입이고 value가 Int인 빈 Dictionary 생성

// var scoreDictionary: Dictionary<String, Int> = [String: Int]()
var scoreDict: [String: Int] = [:]
scoreDict["Kwon"] = 100
scoreDict["Park"] = 80
scoreDict["Lee"] = 75

print(scoreDict)
print(scoreDict["Kwon"]!)

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "DUBLIN"]
print(airports.count, airports)

if airports.isEmpty {
    print("The airport is empty.")
} else{
    print("The airport is not empty.")
}

airports["LHR"] = "London"
print(airports.count, airports)

airports["LHR"] = "LONDON"
print(airports.count, airports)

// Set
// 집합 연산에 유용
// 중복값은 처리하지 않는다

var oddDigits: Set = [1,3,5,7,9]
var evenDigits: Set = [2,4,6,8,0]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

oddDigits.insert(1) // 중복값 반영 X
print(oddDigits.sorted())

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())

// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

// ---
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "Sheep", "dog", "cat"]
let cityAnimals: Set = ["duck", "rabbit"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

/*
 열거형(Enumerate)
 - 연관된 항목들을 묶어서 표현할 수 있는 타입
 - 배열, 딕셔너리, 셋과는 다르게 프로그래머가 정의해준 항목값 외에는 추가, 수정이 불가
 - 분석에서 사용하는 용어인 범주(category)와 동일한 의미
 */

enum School: String{
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducation: School = .university
print("저의 최종학력은 \(highestEducation.rawValue) 졸업입니다. ")

// ------------------- //
// 조건문
// ------------------- //


// if 조건문
let someInteger = 10

if someInteger == 100{
    print("100점")
}

if someInteger == 100{
    print("\(someInteger)점")
}else{
    print("100점 만점에 \(someInteger)점")
}

if someInteger < 100{
    print("100 미만")
}else if someInteger > 100{
    print("100 초과")
}else{
    print("100")
}

// Tuple
var isCar = true
var isNew = true

if isCar, isNew{ // == if isCar && isNew{
    print("New Car")
}

isNew = false

if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

// Switch 조건문
// 범위연산자를 활용하면 더 쉽고 유용하다.

// Before using witch statement
let personAge = 14

if personAge < 1{
    print("BABY")
}else if personAge < 3{
    print("Toddler")
}else if personAge < 5{
    print("preschooler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18{
    print("teenager")
}else{
    print("Adult")
}

// After using witch statement
switch personAge{
case 0..<1: print("BABY")
case 1..<3: print("Toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 0..<1: print("teenager")
default: print("Adult")
}

// ------------------------------------------------
let someCharacter: Character = "z"

switch someCharacter{
case "a":
    print("The first letter of the alphabet.")
case "z":
    print("The last letter of the alphabet.")
default:
    print("Some other character")
}

print(someInteger)

switch someInteger{
case 0:
    print("ZERO")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("Over 100")
default:
    print("Unknown")
}

switch someCharacter{
case "z", "Z":
    print("The letter Z")
default:
    print("Some other character")
}

// Tuple 사용하기
let somePoint = (1,1)

switch somePoint{
case (0, 0):
    print("\(somePoint) is at the origin.")
case (_, 0):
    print("\(somePoint) is on the x-axis.")
case (0, _):
    print("\(somePoint) is on the y-axis.")
case(-2...2, -2...2):
    print("\(somePoint) is in the box.")
default:
    print("\(somePoint)")
}

/*
 직급별 월급을 계산하세요.
 - 부장 : 50%, 과장 : 30%, 대리 : 20%, 사원 : 10%
 - 월급 : 기본급 + 기본급 * 보너스
 */

let pos = "과장"
let basic = 300
var bonus: Double

switch pos{
case "부장":
    bonus = 0.5
case "과장":
    bonus = 0.3
case "대리":
    bonus = 0.2
default:
    bonus = 0.1
}
print("\(pos) \(basic) : \(Int(Double(basic) * (1 + bonus)))만원")

// 이름, 국어, 영어, 수학에 대한 총점, 평균, 등급 출력
let name = "Kim"
let kor = 91
let eng = 97
let mat = 95
let sum = kor + eng + mat
let avg = sum / 3
let grade: String

switch avg{
case 90...100: grade = "수"
case 80..<90: grade = "우"
case 70..<80: grade = "미"
case 60..<70: grade = "양"
default: grade = "가"
}

print("이름 : \(name)")
print("국어 : \(kor)")
print("영어 : \(eng)")
print("수학 : \(mat)")
print("총점 : \(sum)")
print("평균 : \(avg)")
print("점수 등급은 \(grade)입니다.")

// Scope

var a = 1000
var b = 2000
var c: Int
var bo = true
print("main 1:", a, b, bo)

if !bo {
    let aa = 111
    b += 1
    c = 99
    
    print("if 1:", a, aa, b, c)
}else{
//    print("else 1:",a,aa)
    let aa = 5678
    print("else 1:",a,aa)
    a += 10
    print("else 2:",a)
    c = 77
}

//print("main 2:", a, b, aa, c)
print("main 2:", a, b, c)

// 열거형을 입력값으로 받는 switch문

enum School2{
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School2 = .university

switch 최종학력{
case .primary:
    print("최종학력은 유치원입니다.")
case .elementary:
    print("최종학력은 초등학교입니다.")
case .middle:
    print("최종학력은 중학교입니다.")
case .high:
    print("최종학력은 고등학교입니다.")
case .college, .university:
    print("최종학력은 대학(교)입니다.")
case .graduate:
    print("최종학력은 대학원입니다.")
}

// 반복문
// For-In문(For-In loops)
let names = ["Kwon", "Kim", "Park", "Lee"]
print(names[0])

for name in names{
    print("Hello, \(name)!")
}

for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs: [String:Int] = ["spider":8, "ant":6, "cat":4]

for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs.")
}

for idx in 1...5{
    print("\(idx) times 5 is \(idx*5).")
}

let seq = 1...5
for idx in seq{
    print("\(idx) times 5 is \(idx*5).")
}
for idx in seq.reversed(){
    print("\(idx) times 5 is \(idx*5).")
}

let minutes = 60
let minuteInterval = 5

for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
    print(tickMark)
}

for tickMark in stride(from: minutes, through: 0, by: -5){
    print(tickMark)
}

let strings = ["First String", "Second String", "Third String", "Fourth String"]

for string in strings{
    if string.starts(with: "F"){
        print(string)
    }
}

// Swift stuff
for string in strings where string.starts(with: "F"){
    print(string)
}
