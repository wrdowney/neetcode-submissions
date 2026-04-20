class Solution {
    class Car {
        var position: Int
        var time: Double

        init(position: Int, speed: Int, target: Int) {
            self.position = position
            self.time = Double(target - position) / Double(speed)
        }
    }

    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var stack = [Double]()
        var cars = [Car]()

        // Intialize state with all cars
        for (i, pos) in position.enumerated() {
            cars.append(Car(position: pos, speed: speed[i], target: target))
        }
        cars = cars.sorted { $0.position > $1.position }
        print(cars.map { $0.time })
        for i in 0..<cars.count {
            if i == 0 {
                stack.append(cars[i].time)
            } else if stack.last! < cars[i].time {
                stack.append(cars[i].time)
            }
        }
        return stack.count
    }
}
