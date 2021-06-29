//: Playground - noun: a place where people can play

import UIKit

var age = 10
if age > 20{
    print("성인입니다")
} else{
    print("미성년자입니다")
}

var fruitName = "딸기"
if fruitName == "사과"{
    print("제가 좋아하는 사과입니다")
} else if fruitName == "딸기"{
    print("제가 좋아하는 딸기입니다")
}

var someFruits = ["딸기","사과"]
print(someFruits.first)
var str: String? = "happy" //nil갑을 넣기 위해서
str = nil
str!.uppercased()
str?.uppercased()
//nil은 null과 같은 의미
//Optional은 물음표 값이 널일지도 모른다는 의미
