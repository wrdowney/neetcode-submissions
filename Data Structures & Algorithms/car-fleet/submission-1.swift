class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        let cars = zip(position, speed)
            .map { (position: $0, speed: $1) }
            .sorted { $0.position > $1.position }
        
        var fleet: [Double] = []

        for car in cars {
            // time to reach the target
            let time = Double(target - car.position) / Double(car.speed)
            if fleet.isEmpty || time > fleet.last! {
                fleet.append(time)
            }
        }

        return fleet.count
    }
}
