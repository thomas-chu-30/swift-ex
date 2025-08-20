import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter, let slices else {
        return nil
    }
    if diameter < 0 {
        return nil
    }
    if slices <= 0 {
        return nil
    }
    let radius = diameter / 2
    let area = Double.pi * pow(radius, 2)
    return area / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let sliceSizeA: Double? = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let sliceSizeB: Double? = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    if sliceSizeA == nil, sliceSizeB == nil {
        return "Neither slice is bigger"
    }
    if sliceSizeA != nil, sliceSizeB == nil {
        return "Slice A is bigger"
    }
    
    if sliceSizeA  ?? 0 > sliceSizeB ?? 0 {
        return "Slice A is bigger"
    } else if sliceSizeA ?? 0  < sliceSizeB ?? 0 {
        return "Slice B is bigger"
    } else {
        return "Neither slice is bigger"
    }
}
