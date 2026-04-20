class StockSpanner {
    private var stocks = [Int]()

    init() { }

    func next(_ price: Int) -> Int {
        stocks.append(price)
        var copy = stocks
        var count = 0
        while !copy.isEmpty && copy.last! <= price {
            copy.removeLast()
            count += 1
        }

        return count
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let param_1 = obj.next(price)
 */
