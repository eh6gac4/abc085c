//
//  main.swift
//  abc085c
//

import Foundation

let inputs = readLine()!.split(separator: " ").map({Int($0)!})

let numOfBill = inputs[0]
let amount = inputs[1]

var notMatch = true

loop: for i in 0...numOfBill {
    for j in 0...(numOfBill - i) {
        let k = numOfBill - i - j
        if amount == (1000*i + 5000*j + 10000*k) {
            print("\(k) \(j) \(i)")
            notMatch = false
            break loop
        }
    }
}

if notMatch {
    print("-1 -1 -1")
}

