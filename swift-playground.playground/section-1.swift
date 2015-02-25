// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var num: Int? = nil

let n = num?

n

num = 2

if let n2 = num? {
    println(n2)
}

let arr = [1,2,3]

let arr2 = arr.map({(n:Int) -> Int in  n * 2})

arr2


var a = [2,4,6,8]
a.removeAtIndex(0)
a.append(10)
println(a)

var dict: [String: Any] = ["name" : "miso"]

var name = (dict["name"] != nil) ? dict["name"]! : ""
var age = (dict["age"] != nil) ? dict["age"]! : "not defined"

var st = "my name is \(name), and my age is \(age)"

dict["age"] = 39
age = dict["age"]!

st = "my name is \(name), and my age is \(age)"


var x = 2
if x % 2 == 0 {
    println("\(x) is an even number")
} else {
    println("\(x) is an odd number")
}


var random = arc4random_uniform(5)
