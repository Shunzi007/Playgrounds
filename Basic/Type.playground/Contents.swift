//: Playground - noun: a place where people can play

import Foundation

type(of: (0...4))

type(of: [0, 1, 2, 3, 4])

type(of: Set([0, 1, 2, 3, 4]))

struct SS {
    let name: String
}

let ss = SS(name: "ss")
type(of: ss)

class RR {
    let name: String
    init(with name: String) {
        self.name = name
    }
}

let rr = RR(with: "rr")
type(of: rr)

