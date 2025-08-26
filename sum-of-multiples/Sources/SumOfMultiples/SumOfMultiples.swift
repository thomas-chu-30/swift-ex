func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  // Write your code for the 'SumOfMultiples' exercise in this method.
  var allMultiples = Set<Int>()
  
  for multiple in inMultiples {
    // 跳過 0，因為 0 的倍數只有 0 本身
    if multiple == 0 {
      continue
    }
    
    // 找到所有小於 limit 的倍數
    var current = multiple
    while current < limit {
      allMultiples.insert(current)
      current += multiple
    }
  }
  
  // 計算所有唯一倍數的總和
  return allMultiples.reduce(0, +)
}
