func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func protect(_ input_password: String) -> String {
        if input_password == password {
            return secret
        } else  {
            return "Sorry. No hidden secrets here."
        }
    }
    
    return protect
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let x1 = f(room)
    let x2 = f(x1)
    let x3 = f(x2)
    return (x1, x2, x3)
}
