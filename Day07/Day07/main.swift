//
//  main.swift
//  Day07
//
//  Created by 권태우 on 2022/08/06.
//

import Foundation

// Structure
// Swift에서 Type을 정의

// Declare structure
struct Sample{
    var sampleProperty: Int = 10
    let fixedSampleProperty: Int = 100
    static var typeProperty: Int = 1000
    
    func instanceMethod(){
        print("instance method")
    }
    
    static func typeMethod(){
        print("type method")
    }
}

// Use structure
var samp: Sample = Sample()
print(samp.sampleProperty)
samp.sampleProperty = 100
print(samp.sampleProperty)
//samp.fixedSampleProperty = 1000
samp.instanceMethod()

var samp1: Sample = Sample()
print(samp1.sampleProperty)

Sample.typeProperty = 1
Sample.typeMethod()

// Student Structure
struct Student{
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("It is Student type.")
    }
    
    func selfIntroduce(){
        print("I'm \(name) in \(`class`)")
        print("I'm \(name) in \(self.class)")
    }
}

// Check Type : Static
Student.selfIntroduce()

//Instance
var student: Student = Student()
student.name = "Kwon"
student.class = "SWIFT"
student.selfIntroduce()

var cathy: Student = Student()
cathy.name = "Catherine"
cathy.selfIntroduce()

class SampleC{
    var sampleProperty: Int = 10
    let fixedSampleProperty: Int = 100
    static var typeProperty: Int = 1000
    
    func instanceMethod(){
        print("instance method")
    }
    
    static func typeMethod(){
        print("type method")
    }
}

var sampc: SampleC = SampleC()
sampc.sampleProperty = 500

// --------
samp.sampleProperty = 200
print(samp.sampleProperty)

var samp2: Sample = Sample()
samp2.sampleProperty = 500

print(samp.sampleProperty)
print(samp2.sampleProperty)

samp = samp2
print(samp.sampleProperty)
print(samp2.sampleProperty)

class StudentC{
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("It is Student type.")
    }
    
    func selfIntroduce(){
        print("I'm \(name) in \(self.class)")
    }
}

let james: StudentC = StudentC()
james.name = "James"
james.selfIntroduce()

// Class and Structure : 프로그램의 코드를 조직화하기 위해 일반적으로 사용

struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var someResolution: Resolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someResolution.width = 1920
someVideoMode.resolution.width = 1920
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

let vga = Resolution(width: 640, height: 480)
var cinema = vga
print("cinema is now \(cinema.width) pixels wide.")

class Exam{
    var name = ""
    var score: [Int] = []
    var tot = 0, avg = 0
    
    func input(_ n: String, _ s: Int...){
        name = n
        score = s
        cal()
        result()
    }
    
    func cal(){
        tot = 0
        for i in score{
            tot += i
        }
        avg = tot/score.count
    }
    
    func result(){
        print(name, score, tot, avg)
    }
}

let student1: Exam = Exam()
let student2: Exam = Exam()
let student3: Exam = Exam()
let student4: Exam = Exam()

student1.input("Kwon", 77, 78, 79)
student2.input("Lee", 90, 89, 80, 65)
student3.input("Park", 97, 98)
student4.input("Cho", 67, 68,69)

class Shape{
    var kind = ""
    var area = 0.0
    var border = 0.0
    
    func input(_ r: Double){
        kind = "원"
        let pi = 3.14
        area = r*r*pi
        border = 2*pi*r
        result()
    }
    
    func input(_ w: Double, _ h: Double){
        kind = "직사각형"
        area = w*h
        border = 2*(w+h)
        result()
    }
    
    func input(_ w: Double, _ h: Double, _ l: Double){
        kind = "직각삼각형"
        area = w*h/2
        border = w+h+l
        result()
    }
    
    func result(){
        print("\(kind) : \(Int(area)), \(Int(border))")
    }
}

let sh1: Shape = Shape()
let sh2: Shape = Shape()
let sh3: Shape = Shape()

sh1.input(5)
sh2.input(5, 6)
sh3.input(3, 4, 5)
