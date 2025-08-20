func timeToPrepare(drinks: [String]) -> Double {
    var totalTime: Double = 0
    for drink in drinks {
        switch drink {
            case "beer","soda","water":
                totalTime += 0.5
            case "shot":
                totalTime += 1.0
            case "mixed drink":
                totalTime += 1.5
            case "fancy drink":
                totalTime += 2.5
            default:
                totalTime += 3.0
        }
    }
    return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var neededCount: Int = needed
    var count: Int = 0
    
    for lime in limes {
        if neededCount <= 0 {
            break
        }
        switch lime {
            case "small":
                neededCount -= 6
                count += 1
            case "medium":
                neededCount -= 8
                count += 1
            default:
                neededCount -= 10
                count += 1
        }
    }
    return count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var timeLeft = Double(minutesLeft)
    var orders = remainingOrders
    
    while !orders.isEmpty && timeLeft >= 0 {
        let orderTime = timeToPrepare(drinks: orders[0])
        timeLeft -= orderTime
        orders.removeFirst()
    }
    
    return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var beerFirst: String?
    var beerLast: String?
    var beerTotal = 0
    
    var sodaFirst: String?
    var sodaLast: String?
    var sodaTotal = 0
    
    for order in orders {
        switch order.drink {
        case "beer":
            if beerFirst == nil {
                beerFirst = order.time
            }
            beerLast = order.time
            beerTotal += 1
        case "soda":
            if sodaFirst == nil {
                sodaFirst = order.time
            }
            sodaLast = order.time
            sodaTotal += 1
        default:
            break
        }
    }
    
    let beerResult: (first: String, last: String, total: Int)? = beerTotal > 0 ? (beerFirst!, beerLast!, beerTotal) : nil
    let sodaResult: (first: String, last: String, total: Int)? = sodaTotal > 0 ? (sodaFirst!, sodaLast!, sodaTotal) : nil
    
    return (beer: beerResult, soda: sodaResult)
}
