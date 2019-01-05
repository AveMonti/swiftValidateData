import UIKit

var string = "hel"



func spellCheckPassword(_ password: String) -> Bool{
    if password.count <= 5 {
        return false
    }else {
        return true
    }
}

func spellCheckUserNameOrSurname(_ name: String) -> Bool{
    if name.count < 3 {
        return false
    }else {
        let characterset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        if string.rangeOfCharacter(from: characterset.inverted) != nil {
            return false
        }else{
            return true
        }
    }
}

spellCheckUserNameOrSurname(string)

func isValidEmail(_ email:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: email)
}


let email = "aa@wppl"
isValidEmail(email)
