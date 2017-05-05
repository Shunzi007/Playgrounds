class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        var fizz = 0
        var buzz = 0
        for i in 1 ..< n + 1 {
            fizz += 1
            buzz += 1
            if fizz == 3 && buzz == 5 {
                result.append("FizzBuzz")
                fizz = 0
                buzz = 0
            }else if (fizz == 3) {
                result.append("Fizz")
                fizz = 0
            }else if (buzz == 5) {
                result.append("Buzz")
                buzz = 0
            }else {
                result.append(String(i))
            }
            
        }
        return result
    }
}

Solution().fizzBuzz(15)
