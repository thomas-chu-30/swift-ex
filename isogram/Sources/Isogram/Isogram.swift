func isIsogram(_ string: String) -> Bool {
  // Write your code for the 'Isogram' exercise in this file.
  
  // 創建一個 Set 來追蹤已經見過的字母
  var seenLetters = Set<Character>()
  
  // 遍歷字串中的每個字符
  for char in string {
    // 如果是字母，則檢查是否重複
    if char.isLetter {
      // 轉換為小寫進行比較（因為大小寫不區分）
      let lowerChar = char.lowercased().first!
      
      // 如果字母已經見過，則不是 isogram
      if seenLetters.contains(lowerChar) {
        return false
      }
      
      // 將字母加入已見過的集合
      seenLetters.insert(lowerChar)
    }
    // 空格和連字號可以重複，所以不需要檢查
  }
  
  // 如果沒有發現重複字母，則是 isogram
  return true
}
