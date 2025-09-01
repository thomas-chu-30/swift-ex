import Foundation

enum GrainsError: Error {
  case inputTooLow
  case inputTooHigh
  case inputOutOfRange
}

struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    // Write your code for the 'Grains' exercise in this file.
    if num < 1 {
      throw GrainsError.inputTooLow
    }
    if num > 64 {
      throw GrainsError.inputTooHigh
    }
    
    let n = num - 1
    let result = pow(2.0, Double(n))
    return UInt64(result)
  }

  static var total: UInt64 {
    var result: UInt64 = 0
    for i in 1...64 {
      result += try! square(i)
    }
    return result
  }

}
