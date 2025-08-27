import Foundation

func distance(x: Double, y: Double) -> Double {
  return sqrt(x * x + y * y)
}
func dartScore(x: Double, y: Double) -> Int {
  // Write your code for the 'Darts' exercise here.
    let d = distance(x: x, y: y)
    print(d)
    if d > 10 {
        return 0
    } else if d > 5 {
        return 1
    } else if d > 1 {
        return 5
    } else {
        return 10
    }
    
}
