//: Playground - noun: a place where people can play

import UIKit

var myFavoriteColor = "#00ff00"

var firstName = "Harry"
var secondName = "Potter"

firstName + " " + secondName + "님"
"\(firstName) \(secondName)"

var sampleList : [Int] = []
sampleList.append(0)
sampleList.append(5)
sampleList.append(10)

print(sampleList)
sampleList[0]
sampleList[1]

var sampleDict: [String: String] = [:]

sampleDict["name"] = "Harry Potter"
sampleDict["house"] = "Gryffindor"

print(sampleDict)
sampleDict["name"]
sampleDict["house"]

sampleDict["house"] = "Slythery"

var str = "spartacodingclub"
str.uppercased()//기본제공 대문자 변경 함수

func calculateAge(calYear: Int, birthYear: Int) -> Int {
    return calYear - birthYear
}
calculateAge(calYear: 2021, birthYear: 1993)
calculateAge(calYear: 2021, birthYear: 1980)

func isEven(num: Int) -> Bool{
    var remainder = num % 2
    return remainder == 0
}
isEven(num: 10)

func calculateAgeRange(calYear: Int, birthYear: Int) -> String {
    var age = calYear - birthYear
    var range = age/10
    return "\(range)0대"
}
calculateAgeRange(calYear: 2021, birthYear: 1993)


func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(sum(num1 :3, num2: 2))

func printSum(num1 : Int, num2: Int){
    print(num1 + num2)
}
printSum(num1: 3, num2: 5)




