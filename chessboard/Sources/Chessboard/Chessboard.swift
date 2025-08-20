// TODO: define the 'ranks' constant
let ranks = 1...8
// TODO: define the 'files' constant
let files = "A"..."H"


func isValidSquare(rank: Int, file: String) -> Bool {
    // Check rank is between 1 and 8
    guard (1...8).contains(rank) else { return false }

    // Check file is a single letter between "a" and "h"
    guard let firstChar = file.lowercased().first,
          ("a"..."h").contains(String(firstChar)),
          file.count == 1 else {
        return false
    }

    return true
}

func getRow(_ board : [String], rank: Int) -> [String] {
    let filesCount: Int = 8 // chessboard always has 8 files
    
    let startIndex = (rank - 1) * filesCount
    let endIndex = startIndex + filesCount
    
    guard startIndex >= 0, endIndex <= board.count else {
        return [] // invalid rank
    }
    
    return Array(board[startIndex..<endIndex])
}
