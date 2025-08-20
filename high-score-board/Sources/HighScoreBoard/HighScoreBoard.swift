func newScoreBoard() -> [String: Int] {
    return [:]
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores[name] = 0
    }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    if let currentScore = scores[name] {
        scores[name] = currentScore + delta
    }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    return scores.sorted { $0.key < $1.key }
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    return scores.sorted { $0.value > $1.value }
}
