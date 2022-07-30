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
