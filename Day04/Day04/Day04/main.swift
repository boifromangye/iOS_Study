//
//  main.swift
//  Day04
//
//  Created by 권태우 on 2022/07/24.
//

import Foundation

/* Optional
 - nil 값을 포함할 수도 안할 수도 있다.
*/

var constantNum = 100
//constantNum = nil
let optionalConstant1 : Int! = nil
let optionalConstant2 : Int? = nil

var constantNum1 : Int! = 100
print(constantNum1 + 50)

constantNum1 = nil
//print(constantNum1 + 1)

/* Optional Unwrapping
 - Optional Binding : nil check하고 안전한 값만 추출(메모리 내 변수 값의 유무를 확인 후 추출)
 - Force Unwrapping
 */

var myName : String? = "Kwon"
if let name = myName{
    print("Not nil, \(name)")
}else{
    print("Nil")
}
var myName2 : String? = "Park"
var yourName2 : String? = nil

if let i = myName2, let friend = yourName2{
    print("\(i) and \(friend)")
}

yourName2 = "Lee"
if let i = myName2, let friend = yourName2{
    print("\(i) and \(friend)")
}

print(yourName2!)

yourName2 = nil
//print(yourName2!)

// --------------
// Collection
// --------------
/*
 - 여러 값들을 묶어서 하나의 변수로 사용
 1) Array : 순서가 있는 리스트 컬렉션
 2) Dictionary : key와 value의 쌍으로 이루어진 컬렉션
 3) Set : 순서와 중복 데이터가 없는 집합 연산
 */

// Array
// 빈 정수형 배열 생성
var intVariable1 : Array<Int> = Array<Int>() // < > : Generic
var intVariable2 : [Int] = [Int]()
var intVariable3 : [Int] = []
var intVariable4 = [1, 2, 3]

// Add Data
intVariable1.append(10)
intVariable1.append(1)
intVariable1.append(100)

print(intVariable1)

// Calculate
print(intVariable1.contains(100))
print(intVariable1.contains(3))

// Print
print(intVariable1[0] + intVariable1[2])
print(intVariable1[0...2])

// Edit
intVariable1[0] = 999
print(intVariable1)

// Delete
intVariable1.remove(at: 1)
print(intVariable1)
intVariable1.removeLast()
intVariable1.removeAll()
intVariable1 = []
print(intVariable1.count)

// 기본값으로 설정된 배열 생성
var fiveDoubles1 : [Double] = [0.0, 0.0, 0.0, 0.0, 0.0]
var fiveDoubles2 = Array(repeating: 0.0, count: 5)
var fiveDoubles3 = Array(repeating: 2.5, count: 5)

// 배열 합치기
var tenDoubles = fiveDoubles1 + fiveDoubles3
print(tenDoubles)

// 배열 더하기
var fiveSumDoubles : [Double] = []

for i in 0..<fiveDoubles1.count{
    fiveSumDoubles.append(fiveDoubles1[i] + fiveDoubles3[i])
}
print(fiveSumDoubles)

// 문자를 이용한 배열의 생성
var shoppingList1 : [String] = ["Eggs", "Milk"]
print(shoppingList1)

var shoppingList2 : [String] = [String](repeating: "Pencil", count: 3)
print(shoppingList2)

for i in 0..<shoppingList1.count{
    print(shoppingList1[i])
}

for i in shoppingList1{
    print(i)
}

for i in ["a", "b", "c"]{
    print(i)
}

print("The shopping list contains \(shoppingList1.count) items.")

//shoppingList1 = []
if shoppingList1.isEmpty {
    print("The shopping list is empty.")
} else{
    print("The shopping list contains \(shoppingList1.count) items.")
}

// 배열에 데이터 추가
shoppingList1.append("Flour")
print(shoppingList1.count, shoppingList1)

shoppingList1 += ["Butter"]
print(shoppingList1.count, shoppingList1)

shoppingList1 += ["Coke", "Chocolate", "Cheese"]
print(shoppingList1.count, shoppingList1)

// 배열의 특정 위치 데이터 불러오기
var firstItem = shoppingList1[0]
print(firstItem)

// 배열의 특정 위치 변경 및 제거
shoppingList1[4...6] = ["Beer", "Candy"]
print(shoppingList1.count, shoppingList1)

// 배열의 특정 위치 데이터 추가
shoppingList1.insert("Soju", at: 0)
print(shoppingList1.count, shoppingList1)

for (index, value) in shoppingList1.enumerated(){
    print("Item \(index+1) : \(value)")
}

// 배열의 합계 구하기 및 최대값 찾기
let arr = [1, 23, 25, 77, 9, 40, 39, 21]

var total = 0
for i in arr{
    total += i
}
print(total)

var max = arr[0]
for i in arr{
    if max < i {
        max = i
    }
}
print("The maximum value is \(max).")

print(arr.max()!)