class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var result: [String: Int] = [:]
    
    for (scoreString, letters) in old {
      guard let score = Int(scoreString) else { continue }
      
      for letter in letters {
        result[letter.lowercased()] = score
      }
    }
    
    return result
  }
}
