class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(Int, Int)]()
        var res = [Int](repeating: 0, count: temperatures.count)

        for (i, t) in temperatures.enumerated() {
            while !stack.isEmpty && t > stack.last!.0 {
                let (_, popIdx) = stack.popLast()!
                res[popIdx] = i - popIdx
            }
            stack.append((t, i))
        }
        
        return res
    }
}
