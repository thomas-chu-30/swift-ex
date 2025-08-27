import Foundation

enum Answers: String {
    case Sure = "Sure."
    case Chill = "Whoa, chill out!"
    case Calm = "Calm down, I know what I'm doing!"
    case Fine = "Fine. Be that way!"
    case Whatever = "Whatever."
}

class Bob {
    static func response(_ message: String) -> String {
        // 移除前後空白字元
        let trimmedMessage = message.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        // 檢查是否為沉默（空字串或只有空白字元）
        if trimmedMessage.isEmpty {
            // 這裡需要 .rawValue 因為 Answers.Fine 是 enum case，不是字串
            // Answers.Fine 的型別是 Answers，不是 String
            // 所以要用 .rawValue 來取得實際的字串值 "Fine. Be that way!"
            return Answers.Fine.rawValue
        }
        
        // 檢查是否為問題（以問號結尾）
        let isQuestion = trimmedMessage.hasSuffix("?")
        
        // 檢查是否為大喊（全部大寫且有字母）
        let hasLetters = trimmedMessage.rangeOfCharacter(from: .letters) != nil
        let isShouting = hasLetters && trimmedMessage == trimmedMessage.uppercased()
        
        // 根據條件決定回應
        if isQuestion && isShouting {
            return Answers.Calm.rawValue
        } else if isQuestion {
            return Answers.Sure.rawValue
        } else if isShouting {
            return Answers.Chill.rawValue
        } else {
            return Answers.Whatever.rawValue
        }
    }
    
    // 另一種寫法：使用型別推斷來簡化
    static func responseAlternative(_ message: String) -> String {
        let trimmedMessage = message.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if trimmedMessage.isEmpty {
            let answer: Answers = .Fine  // 這裡可以簡寫，因為已經宣告了型別
            return answer.rawValue
        }
        
        let isQuestion = trimmedMessage.hasSuffix("?")
        let hasLetters = trimmedMessage.rangeOfCharacter(from: .letters) != nil
        let isShouting = hasLetters && trimmedMessage == trimmedMessage.uppercased()
        
        let answer: Answers
        if isQuestion && isShouting {
            answer = .Calm  // 可以簡寫
        } else if isQuestion {
            answer = .Sure  // 可以簡寫
        } else if isShouting {
            answer = .Chill  // 可以簡寫
        } else {
            answer = .Whatever  // 可以簡寫
        }
        
        return answer.rawValue
    }
}
