import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
    if(phrase == ""){
        return "_"
    }
    return phrase.components(separatedBy: "\n").map { $0.first?.uppercased() ?? "" }.joined()
}

func backDoorPassword(_ phrase: String) -> String {
    return phrase.components(separatedBy: "\n").map { line in
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        return trimmed.last?.lowercased() ?? ""
      }.joined() + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
    let lines = phrase.components(separatedBy: "\n")
    let password = lines.enumerated().map { index, text in
        let idx: String.Index = text.index(text.startIndex, offsetBy: index)
        return String(text[idx]).uppercased()
    }.joined()
    return password + "!"
}
