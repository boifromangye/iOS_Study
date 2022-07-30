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
