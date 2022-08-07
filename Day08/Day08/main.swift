//
//  main.swift
//  Day08
//
//  Created by 권태우 on 2022/08/07.
//

import Foundation

// Extension: 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있는 기능입니다.

// Int 타입에 extension 기능 추가하기

extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
    
    var isOdd: Bool{
        return self % 2 == 1
    }
}

print(1.isEven)

//Closure: 이름이 없는 함수

// Function
func sumFunction(a: Int, b: Int) -> Int{
    return (a+b)
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)

// Closure
var sumClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a+b
}
sumResult = sumClosure(10, 30)
print(sumResult)
