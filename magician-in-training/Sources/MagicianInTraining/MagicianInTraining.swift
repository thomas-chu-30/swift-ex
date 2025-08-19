func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack
    // 只在 index 合法時才替換
    guard index >= 0 && index < newStack.count else {
        return newStack
    }
    newStack[index] = newCard
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    // 只在 index 合法時才刪除
    guard index >= 0 && index < newStack.count else {
        return newStack
    }
    newStack.remove(at: index)
    return newStack
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    // 只在 index 合法時才插入
    guard index >= 0 && index <= newStack.count else {
        return newStack
    }
    newStack.insert(newCard, at: index)
    return newStack
}


func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    let newStack = stack
    return newStack.count == size
}
