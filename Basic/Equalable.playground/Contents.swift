//: Playground - noun: a place where people can play

import Foundation

class SS: NSObject {
    var name: String = ""
    
    override func isEqual(_ object: Any?) -> Bool {
        return (object as! SS).name == self.name
    }
    
    init(with name:String) {
        super.init()
        self.name = name
    }
}

let s0 = SS(with: "s0")
let s1 = SS(with: "s0")
if s0 == s1 {
    print("equal")
}else {
    print("not equal")
}

struct RR: Equatable {
    var name: String = ""
    
    public static func ==(lhs: RR, rhs: RR) -> Bool {
        return lhs.name == rhs.name
    }
    
    init(with name:String) {
        self.name = name
    }
}

let r0 = RR(with: "r0")
let r1 = RR(with: "r0")
if r0 == r1 {
    print("equal")
}else {
    print("not equal")
}
