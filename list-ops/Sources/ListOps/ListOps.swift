//Solution goes in Sources
class ListOps {
  static func append(_ list1: [Int], _ list2: [Int]) -> [Int] {
    return list1 + list2
  }

  static func concat(_ lists: [[Int]]) -> [Int] {
    return lists.flatMap { $0 }
  }

  static func filter(_ list: [Int], _ predicate: (Int) -> Bool) -> [Int] {
    return list.filter { predicate($0) }
  }
  
  static func length(_ list: [Int]) -> Int {
    return list.count
  }

  static func map(_ list: [Int], _ function: (Int) -> Int) -> [Int] {
    return list.map { function($0) }
  }

  static func foldl(_ list: [Int], _ function: (Int, Int) -> Int, _ initial: Int) -> Int {
    return list.reduce(initial) { function($0, $1) }
  }

  static func foldr(_ list: [Int], _ function: (Int, Int) -> Int, _ initial: Int) -> Int {
    return list.reversed().reduce(initial) { function($0, $1) }
  }

  static func reverse(_ list: [Int]) -> [Int] {
    return list.reversed()
  }
}