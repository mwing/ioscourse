// Playground - noun: a place where people can play

import UIKit

var i = 97

func isPrime(num: Int) -> Bool {
    if num == 2 { return true }
    for i = num - 1; i > 1; i-- {
        if num % i == 0 {
            return false
        }
    }
    return true
}

isPrime(i)
isPrime(1)
isPrime(2)
isPrime(6)
