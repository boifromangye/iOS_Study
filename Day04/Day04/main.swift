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
