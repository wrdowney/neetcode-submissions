class TimeMap {
    var storage = [String : [(timestamp: Int, value: String)]]()
    init() {

    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        // storage[key, default: [:]][timestamp] = value
        storage[key, default: []].append((timestamp: timestamp, value: value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        // storage[key]?[timestamp] ?? ""
        guard let valuesForKey = storage[key] else { return "" }
        var l = 0, r = valuesForKey.count - 1
        var res = ""
        while l <= r {
            var m = (l + r) / 2
            if valuesForKey[m].timestamp <= timestamp {
                res = valuesForKey[m].value
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return res
    }
}
