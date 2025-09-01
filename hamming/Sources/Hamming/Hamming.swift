import Foundation

enum HammingError: Error {
  case differentLengths
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  // 檢查兩個字符串長度是否相同
  if dnaSequence.count != against.count {
    throw HammingError.differentLengths
  }
  
  // 計算不同字符的數量
  var distance = 0
  for (char1, char2) in zip(dnaSequence, against) {
    if char1 != char2 {
      distance += 1
    }
  }
  
  return distance
}
