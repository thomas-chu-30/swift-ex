// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}

// TODO: define the 'quantities' function
@available(macOS 13.0, *)
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let countResult = (noodles: layers.map { $0.contains("noodles") ? 1 : 0 }.reduce(0, +),
            sauce: layers.map { $0.contains("sauce") ? 1 : 0 }.reduce(0, +))
    return (noodles: countResult.noodles * 3, sauce: (Double(countResult.sauce) * 0.2))
}

// TODO: define the 'toOz' function
func toOz(_ ingredients: inout (noodles: Int, sauce: Double)) {
    ingredients.sauce *= 33.814
}

// TODO: define the 'redWine' function
@available(macOS 13.0, *)
func redWine(layers: String...) -> Bool {
    func countMozzarella() -> Int {
        return layers.filter { $0.contains("mozzarella") }.count
    }

    func countRicotta() -> Int {
        return layers.filter { $0.contains("ricotta") }.count
    }

    func countBechamel() -> Int {
        return layers.filter { $0.contains("béchamel") }.count
    }

    func countSauce() -> Int {
        return layers.filter { $0.contains("sauce") }.count
    }

    func countMeat() -> Int {
        return layers.filter { $0.contains("meat") }.count
    }

    let whiteWineLayers = countMozzarella() + countRicotta() + countBechamel()
    let redWineLayers = countSauce() + countMeat()

    return redWineLayers >= whiteWineLayers
}

