import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        var result = [Int]()
        
        for i in 0 ..< nums.count {
            let numberToFind: Int = target - nums[i]
            if let numberToFindIndex = hashMap[numberToFind] {
                result.append(numberToFindIndex + 1)
                result.append(i + 1)
                return result
            } else {
                hashMap[nums[i]] = i
            }
        }
        return result
        
    }
}

let nums = [2, 7, 11, 15], target = 9
Solution().twoSum([2, 7, 11, 15], 9)
