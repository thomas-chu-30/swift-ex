func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    var total = 0
    for count in birdsPerDay {
        total = total + count
    }
    return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    let startIndex = (weekNumber - 1) * 7
    let endIndex = startIndex + 6
    return birdsPerDay[startIndex...endIndex].reduce(0, +)
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    return birdsPerDay.enumerated().map { index, number in
        return index % 2 == 0 ? number + 1 : number
    }
}
