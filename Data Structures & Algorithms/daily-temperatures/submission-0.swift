class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(Int, Int)]()
        var res = [Int](repeating: 0, count: temperatures.count)

        for (i, temp) in temperatures.enumerated() {
            while !stack.isEmpty && temp > stack.last!.0 {
                let (t, idx) = stack.popLast()!
                res[idx] = i - idx
            }
            stack.append((temp, i))
        }
        return res
    }
}
