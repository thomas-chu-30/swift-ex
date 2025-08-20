func getName(_ item: (name: String, amount: Int)) -> String {
    return item.0
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
    return (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
    return items.map { item in
        if item.name == toy {
            return (item.name, amount)
        }
        return item
    }
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
    return items.map { item in
        return (item.name, item.amount, category)
    }
}
