typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { tuple in
    return (tuple.1, tuple.0, tuple.2)
}
//
//
//let rotate: ChangeClosure = TODO: Please define the rotate closure
let rotate: ChangeClosure = { tuple in
    return (tuple.1, tuple.2, tuple.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
    return { id, wires in
        var currentWires = wires
        
        // 從右到左遍歷 ID 的每一位
        for bit in id.reversed() {
            if bit == 0 {
                currentWires = flipper(currentWires)
            } else {
                currentWires = rotator(currentWires)
            }
        }
        
        return currentWires
    }
}
