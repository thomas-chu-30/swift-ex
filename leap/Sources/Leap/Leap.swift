class Year {
  let calendarYear: Int
  
  init(calendarYear: Int) {
    self.calendarYear = calendarYear
  }
  
  var isLeapYear: Bool {
    // 閏年規則：
    // 1. 能被 4 整除
    // 2. 但如果能被 100 整除，則必須也能被 400 整除
    return calendarYear % 4 == 0 && (calendarYear % 100 != 0 || calendarYear % 400 == 0)
  }
}
