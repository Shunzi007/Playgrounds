//: Playground - noun: a place where people can play

import Foundation


// map


// flatmap


//  reduce
let entries = ["x=5", "y=7", "z=10"]
let foo = entries.map({ $0.components(separatedBy: "=") })
    .reduce([String:Int]()) { acc, comps in
        var ret = acc
        ret[comps[0]] = Int(comps[1])
        return ret
}
print(foo)