import Foundation

func calculator (number: Int, square: Int) -> Int  {
    let total = pow(Decimal(number), square)
    return NSDecimalNumber(decimal: total).intValue
}

func isArmstrongNumber(_ number: Int) -> Bool {
    // Write your code for the 'Armstrong Numbers' exercise here.
    let square_number = String(number).count
    let number_array = String(number).compactMap { Int(String($0)) }
    
    var result_array = [] as [Int]
    for number in number_array {
        let total = calculator(number: number, square: square_number)
        result_array.append(total)
    }
    return result_array.reduce(0, +) == number
}
