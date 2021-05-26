//
//  main.swift
//  BVNDay4
//
//  Created by Apple on 26/05/2021.
//

import Foundation

//MARK: Bai 1
func divisorsOfN(_ n: Int) {
    if n < 1 {
        print("so khong hop le")
        return
    }
    
    for i in 1...n {
        if n%i == 0 {
            print(i, terminator: " ")
        }
    }
    print()
}
divisorsOfN(6)

//MARK: Bai 2
func printName(_ name: String) {
    let finalName = name.split(separator: " ")
    if finalName.count == 1 {
        print(finalName[0])
    } else {
    print(finalName.first! + " " + finalName.last!)
    }
}

printName("Phan Hoa")

//MARK: Bai 3
func checkAnswer(_ answer: Character) {
    switch answer {
    case "a", "b", "c":
        print("sai")
    case "d":
        print("đúng")
    default:
        print("không hợp lệ. chọn lại đáp án")
    }
}

checkAnswer("h")

//MARK: Bai 4
func checkPerfectNum(_ num : Int) -> Bool {
    if num == 1 {
        return false
    }
    
    var sum = 0
    for i in 1...(num - 1) {
        if num%i == 0 {
            sum += i
        }
    }
    
    return sum == num ? true : false
}

func printPerfectNum(_ n: Int) {
    for i in 1...(n - 1) {
        if checkPerfectNum(i) {
            print(i, terminator: " ")
        }
    }
}

printPerfectNum(9000)

