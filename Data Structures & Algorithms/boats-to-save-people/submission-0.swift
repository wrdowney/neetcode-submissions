class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var pplByWeight = people.sorted()

        var lightest = 0, heaviest = people.count - 1
        var numBoats = 0

        while lightest <= heaviest {
            // print(lightest, heaviest, numBoats)
            if pplByWeight[lightest] + pplByWeight[heaviest] <= limit {
                // print("Send 2")
                lightest += 1
                heaviest -= 1
            } else {
                // print("Send 1")
                heaviest -= 1
            }
            numBoats += 1
        }

        return numBoats
    }
}