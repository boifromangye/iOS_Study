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
/*
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
*/
// ------------------
// 함수(function)
// ------------------

func integerSum(a: Int, b: Int) -> Int{
    return a+b
}

func integerSum2(n1: Int, n2: Int){
    print("\(n1) + \(n2) = \(n1+n2)")
}

func integerSum3(_ n1: Int,_ n2: Int){
    print("\(n1) + \(n2) = \(n1+n2)")
}

print(integerSum(a: 10, b: 20))
integerSum2(n1: 20, n2: 10)
integerSum3(11, 22)

func sayHelloWorld(){
    print("Hello World!")
}

// Ex
// sayHelloWorld2라는 함수를 만든다
// 사용법 sayHelloWorld2(3) <- "Hello World" 3번 출력

func sayHelloWorld2(i: Int){
    for _ in 1...i{
        print("Hello World")
    }
}

sayHelloWorld2(i: 3)

// 매개변수의 기본값

func greeting(friend: String, me: String = "Kwon"){
    print("Hello \(friend)! I'm \(me).")
}

greeting(friend: "Kim", me: "Kwon")
greeting(friend: "Park")

func greeting2(friend: String = "Lee", me: String = "Kwon"){
    print("Hello \(friend)! I'm \(me).")
}

greeting2()

// 가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)."
}

print(sayHelloToFriends(me: "Kwon", friends: "Lee", "Park", "Kim"))

// 복수의 값을 반환하는 함수
// Tuple을 함수의 반환값으로 사용

func getCountry() -> (dialCode: Int, isoCode: String, name: String){
    let country = (dialCode: 82, isoCode: "KR", name: "KOREA")
    return country
}

let ret = getCountry()
print(ret.dialCode)
