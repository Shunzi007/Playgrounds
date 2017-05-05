//: Playground - noun: a place where people can play

import Foundation

func Descartes(dimvalue: inout [[String]], result: inout [String], layer: NSInteger ,curstring : String) {
    if layer < dimvalue.count - 1 {
        if dimvalue[layer].count == 0 {
            Descartes(dimvalue: &dimvalue, result: &result, layer: layer, curstring: curstring)
        }else{
            for (index, _) in dimvalue[layer].enumerated() {
                Descartes(dimvalue: &dimvalue, result: &result, layer: layer + 1, curstring: curstring + dimvalue[layer][index])
            }
        }
    }else if(layer == dimvalue.count - 1){
        if dimvalue[layer].count == 0 {
            result.append(curstring)
        }else{
            for (index, _) in dimvalue[layer].enumerated() {
                result.append(curstring + dimvalue[layer][index])
            }
        }
    }
}

var arr: [[String]] = [["甲", "乙"], ["I", "II", "III"], ["1", "2", "3"], ["A", "B"]]
var result: [String] = []

Descartes(dimvalue: &arr, result: &result, layer: 0, curstring: "")

print(result)
