//
//  main.swift
//  Prison Break Solution
//
//

import Foundation

func prison(n: Int, m: Int, h: [Int], v: [Int]) -> Int {
    var hbar: [Bool] = Array(repeating: true, count: n+1)
    var vbar: [Bool] = Array(repeating: true, count: m+1)
    var gap_x = 0
    var max_x = 0
    var gap_y = 0
    var max_y = 0

    for i in 0..<h.count {
        hbar[h[i]] = false
    }
    for i in 0..<v.count {
        vbar[v[i]] = false
    }

    for i in 1...n {
        if hbar[i] {
            gap_x = 0
        } else {
            gap_x += 1
            max_x = max(max_x, gap_x)
        }
    }

    for i in 1...m {
        if vbar[i] {
            gap_y = 0
        } else {
            gap_y += 1
            max_y = max(max_y, gap_y)
        }
    }
    return (max_x+1)*(max_y+1)
}


let result = prison(n: 3, m: 2, h: [1,2,3], v: [1,2])
print(result)

